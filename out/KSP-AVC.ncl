# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.install_loc" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "DIRECTORY", "PATH" ],
              Array Dyn
            ],
      "definitions.version" =
        std.contract.any_of
            [
              js2n.string.Matches "^(any|[0-9]+\\.[0-9]+(\\.[0-9]+)?)$",
              {
                BUILD | std.number.Integer | doc "Build informaion" | optional,
                MAJOR
                  | std.number.Integer
                  | doc "Change major version when you make incompatible API changes",
                MINOR
                  | std.number.Integer
                  | doc "Change minor version when you add functionality in a backwards-compatible manner"
                  | optional,
                PATCH
                  | std.number.Integer
                  | doc "Change patch version when you make backwards-compatible bug fixes"
                  | optional,
                ..
              }
            ],
    }
    in
  {
      ASSEMBLY_NAME
        | String
        | doc "DO NOT USE, won't work with CKAN; name of a DLL to check for VERSION on the fly"
        | optional,
      CHANGE_LOG
        | String
        | doc "The complete or incremental change log for the add-on"
        | optional,
      CHANGE_LOG_URL
        | String
        | doc "Populates the CHANGE_LOG field using the file at this url"
        | optional,
      DISALLOW_VERSION_OVERRIDE
        | Bool
        | doc "If true, don't trust KSP-AVC's idea of which game versions are compatible with which other game versions, based on user configuration"
        | optional,
      DOWNLOAD
        | String
        | doc "Web address where the latest version can be downloaded"
        | optional,
      GITHUB
        | {
          "ALLOW_PRE_RELEASE "
            | Bool
            | doc "Include pre-releases in the latest release search"
            | optional,
          "REPOSITORY "
            | String
            | doc "The name of the source repository"
            | optional,
          "USERNAME " | String | doc "Your GitHub username" | optional,
          ..
        }
        | js2n.record.Required [ "REPOSITORY", "USERNAME" ]
        | doc "Allows KSP-AVC to do release checks with GitHub including setting a download location if one is not specified. If the latest release version is not equal to the version in the file, an update notification will not appear."
        | optional,
      "INSTALL_LOC|INSTALL_LOC*"
        | refs."definitions.install_loc"
        | doc "Stanza to define file location to check, used by MADLAD"
        | optional,
      KERBAL_STUFF_URL
        | String
        | doc "URL to this mod's page on KerbalStuff"
        | optional,
      KSP_VERSION
        | refs."definitions.version"
        | doc "Version of KSP that the add-on was made to support"
        | optional,
      KSP_VERSION_EXCLUDE
        | js2n.array.UniqueItems
        | Array refs."definitions.version"
        | doc "DO NOT USE, won't work with CKAN; a list of versions with which this mod is incompatible"
        | optional,
      KSP_VERSION_INCLUDE
        | js2n.array.UniqueItems
        | Array refs."definitions.version"
        | doc "DO NOT USE, won't work with CKAN; a list of versions with which this mod is compatible"
        | optional,
      KSP_VERSION_MAX
        | refs."definitions.version"
        | doc "Maximum version of KSP that the add-on supports"
        | optional,
      KSP_VERSION_MIN
        | refs."definitions.version"
        | doc "Minimum version of KSP that the add-on supports"
        | optional,
      LOCAL_HAS_PRIORITY
        | Bool
        | doc "DO NOT USE, won't work with CKAN; if true, don't override properties using the remote version file"
        | optional,
      NAME | String | doc "The display name for the add-on",
      REMOTE_HAS_PRIORITY
        | Bool
        | doc "DO NOT USE, won't work with CKAN; if false, don't override properties using the remote version file"
        | optional,
      URL
        | String
        | doc "Location of a remote version file for update checking"
        | optional,
      VERSION | refs."definitions.version" | doc "The version of the add-on",
      ..
    }