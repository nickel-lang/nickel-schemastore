# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Tag" =
        js2n.Nullable
            (std.contract.Sequence
              [ js2n.string.MaxLength 40, js2n.string.MinLength 1 ]),
      "definitions.Url" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.string.MaxLength 2000,
                js2n.string.Matches "^([Hh][Tt][Tt][Pp][Ss]?)://.+$"
              ]),
    }
    in
  {
      Author
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 256, js2n.string.MinLength 2 ])
        | doc "The package author"
        | optional,
      Copyright
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 512, js2n.string.MinLength 3 ])
        | doc "The package copyright"
        | optional,
      CopyrightUrl
        | refs."definitions.Url"
        | doc "The package copyright page"
        | optional,
      Description
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 10000, js2n.string.MinLength 3 ])
        | doc "The full package description"
        | optional,
      License
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 512, js2n.string.MinLength 3 ])
        | doc "The package license"
        | optional,
      LicenseUrl | refs."definitions.Url" | doc "The license page" | optional,
      ManifestType | std.contract.Equal "locale" | doc "The manifest type",
      ManifestVersion
        | js2n.string.Matches
          "^(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])(\\.(0|[1-9][0-9]{0,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])){2}$"
        | doc "The manifest syntax version",
      Moniker
        | refs."definitions.Tag"
        | doc "The most common package term"
        | optional,
      PackageIdentifier
        | js2n.string.MaxLength 128
        | js2n.string.Matches
          "^[^\\.\\s\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]{1,32}(\\.[^\\.\\s\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]{1,32}){1,3}$"
        | doc "The package unique identifier",
      PackageLocale
        | js2n.string.MaxLength 20
        | js2n.string.Matches
          "^([a-zA-Z]{2}|[iI]-[a-zA-Z]+|[xX]-[a-zA-Z]{1,8})(-[a-zA-Z]{1,8})*$"
        | doc "The package meta-data locale",
      PackageName
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 256, js2n.string.MinLength 2 ])
        | doc "The package name"
        | optional,
      PackageUrl
        | refs."definitions.Url"
        | doc "The package home page"
        | optional,
      PackageVersion
        | js2n.string.MaxLength 128
        | js2n.string.Matches "^[^\\\\/:\\*\\?\"<>\\|\\x01-\\x1f]+$"
        | doc "The package version",
      PrivacyUrl
        | refs."definitions.Url"
        | doc "The publisher privacy page or the package privacy page"
        | optional,
      Publisher
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 256, js2n.string.MinLength 2 ])
        | doc "The publisher name"
        | optional,
      PublisherSupportUrl
        | refs."definitions.Url"
        | doc "The publisher support page"
        | optional,
      PublisherUrl
        | refs."definitions.Url"
        | doc "The publisher home page"
        | optional,
      ShortDescription
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 256, js2n.string.MinLength 3 ])
        | doc "The short package description"
        | optional,
      Tags
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.array.MaxItems 16,
              js2n.array.UniqueItems,
              Array refs."definitions.Tag"
            ])
        | doc "List of additional package search terms"
        | optional,
      ..
    }