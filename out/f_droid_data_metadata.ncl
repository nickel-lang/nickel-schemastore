# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.anti_features" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'Tracking,
                          'TetheredNet,
                          'UpstreamNonFree,
                          'NSFW,
                          'NoSourceSince,
                          'NonFreeNet,
                          'NonFreeDep,
                          'NonFreeAssets,
                          'NonFreeAdd,
                          'KnownVuln,
                          'ApplicationDebuggable,
                          'Ads
                        |]
                      ]
                  )
                ],
              std.contract.Sequence
                [
                  {
                    _ | std.contract.Sequence
                      [ refs."definitions.localized_string", { _ | Dyn } ]
                  },
                  js2n.record.FieldsMatch
                    "^(Ads|ApplicationDebuggable|KnownVuln|NonFreeAdd|NonFreeAssets|NonFreeDep|NonFreeNet|NoSourceSince|NSFW|UpstreamNonFree|TetheredNet|Tracking)$"
                ]
            ],
      "definitions.localized_string" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch
                "^[a-z]{2,3}(-([A-Z][a-zA-Z]+|\\d+|[a-z]+))*$"
            ],
      "definitions.string_list" = std.contract.any_of [ String, Array String ],
      "definitions.url" = js2n.string.Matches "^https?://.*$",
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Required [ "Repo", "RepoType", "SourceCode" ],
            js2n.record.Required [ "NoSourceSince" ]
          ],
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { ArchivePolicy = js2n.Const 0, },
                  required = { ArchivePolicy = true, },
                },
              Array Dyn,
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "NoSourceSince" ],
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { UpdateCheckMode | std.contract.Equal "None" | optional, .. },
              Array Dyn
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "Binaries" ],
              Array Dyn,
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        Builds =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                js2n.array.Contains
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "binary" ],
                                      Array Dyn
                                    ])
                              ],
                      },
                  required = { Builds = true, },
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "AllowedAPKSigningKeys" ],
              Array Dyn
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        UpdateCheckMode =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                js2n.string.Matches "^Tags",
                                { _ | Dyn },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                AutoUpdateMode
                  | js2n.string.Matches "^(None|Version( \\+.+)?)$"
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { UpdateCheckMode = js2n.Const "HTTP", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  {
                    AutoUpdateMode
                      | js2n.string.Matches "^(None|Version .+)$"
                      | optional,
                    ..
                  },
                  js2n.record.Required [ "UpdateCheckData" ]
                ],
              Array Dyn
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        UpdateCheckMode =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'Static, 'None |]
                                  ],
                                js2n.Null,
                                Bool,
                                Number,
                                js2n.string.Matches "^RepoManifest(/.+)?$",
                                { _ | Dyn },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { AutoUpdateMode | std.contract.Equal "None" | optional, .. },
              Array Dyn
            ]) js2n.Always,
        {
          AllowedAPKSigningKeys
            | std.contract.any_of
              [
                js2n.string.Matches "^[0-9a-f]{64}$",
                Array (js2n.string.Matches "^[0-9a-f]{64}$")
              ]
            | doc "The lowercase hex value of the SHA-256 fingerprint of the signing certificate of an app. If an APK of that app is not signed by one of these keys, it will not be included in the repository."
            | optional,
          AntiFeatures
            | refs."definitions.anti_features"
            | doc "Any number of anti-features the application has."
            | optional,
          ArchivePolicy
            | std.number.Integer
            | doc "This determines the number of versions to keep. The older versions of the app are moved to the archive repo, if one is configured. Defaults to 3."
            | optional,
          AuthorEmail
            | js2n.string.Matches
              "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
            | doc "The e-mail address of the author(s)."
            | optional,
          AuthorName
            | String
            | doc "The name of the author, either full, abbreviated or pseudonym."
            | optional,
          AuthorWebSite
            | refs."definitions.url"
            | doc "The website url of the author(s)."
            | optional,
          AutoName
            | String
            | doc "The name of the application as can best be retrieved from the source code."
            | optional,
          AutoUpdateMode
            | std.contract.any_of
              [
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'Version, 'None |] ],
                js2n.string.Matches "^Version( \\+.+)? [^+].+"
              ]
            | doc "This determines the method used for auto-generating new builds when new releases are available - in other words, adding a new Build Version line to the metadata."
            | optional,
          Binaries
            | refs."definitions.url"
            | doc "The location of binaries used in verification process."
            | optional,
          Bitcoin
            | js2n.string.Matches "^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"
            | doc "A Bitcoin address for donating to the project."
            | optional,
          Builds
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                androidupdate
                  | std.contract.any_of
                    [ std.contract.Equal "auto", Array String ]
                  | doc "By default, 'android update' is used in Ant builds to generate or update the project and all its referenced projects. Specifying update=no bypasses that. Note that this is useless in builds that don't use Ant."
                  | optional,
                antcommands
                  | refs."definitions.string_list"
                  | doc "Specify an alternate set of Ant commands (target) instead of the default 'release'. It can't be given any flags, such as the path to a build.xml."
                  | optional,
                antifeatures
                  | refs."definitions.anti_features"
                  | doc "List of Anti-Features for this specific build. They are described in AntiFeatures."
                  | optional,
                binary
                  | refs."definitions.url"
                  | doc "The location of binaries used in verification process."
                  | optional,
                build
                  | refs."definitions.string_list"
                  | doc "As for 'prebuild', but runs during the actual build phase (but before the main Ant/Maven build). Use this only for actions that do actual building. Any preparation of the source code should be done using 'init' or 'prebuild'."
                  | optional,
                buildjni
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'no, 'yes |] ],
                      Array String
                    ]
                  | doc "Enables building of native code via the ndk-build script before doing the main Ant build."
                  | optional,
                commit
                  | String
                  | doc "The commit parameter specifies the tag, commit or revision number from which to build it in the source repository."
                  | optional,
                disable
                  | String
                  | doc "Disables this build, giving a reason why."
                  | optional,
                encoding
                  | String
                  | doc "Adds a java.encoding property to local.properties with the given value. Generally the value will be 'utf-8'."
                  | optional,
                extlibs
                  | refs."definitions.string_list"
                  | doc "List of external libraries (jar files) from the build/extlib library, which will be placed in the libs directory of the project."
                  | optional,
                forcevercode
                  | std.contract.Equal true
                  | doc "If specified, the package version code in the AndroidManifest.xml is replaced with the version code for the build. See also forceversion."
                  | optional,
                forceversion
                  | std.contract.Equal true
                  | doc "If specified, the package version in AndroidManifest.xml is replaced with the version name for the build as specified in the metadata."
                  | optional,
                gradle
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          js2n.array.ArrayOf (js2n.Const "yes")
                        ],
                      js2n.array.ArrayOf String
                    ]
                  | doc "Build with Gradle instead of Ant, specifying what flavours to use. Flavours are case sensitive since the path to the output APK is as well."
                  | optional,
                gradleprops
                  | refs."definitions.string_list"
                  | doc "List of Gradle properties to pass via the command line to Gradle. A property can be of the form foo or of the form key=value."
                  | optional,
                init
                  | refs."definitions.string_list"
                  | doc "Like 'prebuild', but runs on the source code BEFORE any other processing takes place."
                  | optional,
                maven
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| '"yes@", 'yes |] ]
                    ]
                  | doc "Build with Maven instead of Ant. An extra @<dir> tells F-Droid to run Maven inside that relative subdirectory."
                  | optional,
                ndk
                  | String
                  | doc "Version of the NDK to use in this build."
                  | optional,
                novcheck
                  | std.contract.Equal true
                  | doc "Don't check that the version name and code in the resulting APK are correct by looking at the build output - assume the metadata is correct."
                  | optional,
                oldsdkloc
                  | std.contract.Equal true
                  | doc "The sdk location in the repo is in an old format, or the build.xml is expecting such. The 'new' format is sdk.dir while the VERY OLD format is sdk-location."
                  | optional,
                output
                  | String
                  | doc "Specify a glob path where the resulting unsigned release APK from the build should be."
                  | optional,
                patch
                  | refs."definitions.string_list"
                  | doc "Apply patch(es). 'x' names one (or more - comma-separated) files within a directory below the metadata, with the same name as the metadata file but without the extension. Each of these patches is applied to the code in turn."
                  | optional,
                postbuild
                  | refs."definitions.string_list"
                  | doc "Specifies a single or a list of shell commands to run after the build takes place."
                  | optional,
                preassemble
                  | refs."definitions.string_list"
                  | doc "List of Gradle tasks to be run before the assemble task in a Gradle project build."
                  | optional,
                prebuild
                  | refs."definitions.string_list"
                  | doc "Specifies a shell command (or commands - chain with &&) to run before the build takes place."
                  | optional,
                rm
                  | refs."definitions.string_list"
                  | doc "Specifies the relative paths of files or directories to delete before the build is done."
                  | optional,
                scandelete
                  | refs."definitions.string_list"
                  | doc "When running the scan process, any files that trigger errors - like binaries - will be removed. It acts just like scanignore, but instead of ignoring the files, it removes them."
                  | optional,
                scanignore
                  | refs."definitions.string_list"
                  | doc "Enables one or more files/paths to be excluded from the scan process. This should only be used where there is a very good reason, and probably accompanied by a comment explaining why it is necessary."
                  | optional,
                srclibs
                  | refs."definitions.string_list"
                  | doc "Comma-separated list of source libraries or Android projects. Each item is of the form name@rev where name is the predefined source library name and rev is the revision or tag to use in the respective source control."
                  | optional,
                subdir
                  | String
                  | doc "Specifies to build from a subdirectory of the checked out source code. Normally this directory is changed to before building."
                  | optional,
                submodules
                  | std.contract.Equal true
                  | doc "Use if the project (git only) has submodules - causes git submodule update --init --recursive to be executed after the source is cloned."
                  | optional,
                sudo
                  | refs."definitions.string_list"
                  | doc "Specifies a script to be run using sudo bash -x -c \"xxxx\" in the Buildserver VM guest. This script is run with full root privileges, but the state will be reset after each build."
                  | optional,
                target
                  | String
                  | doc "Specifies a particular SDK target for compilation, overriding the value defined in the code by upstream. This has different effects depending on what build system used — this flag currently affects Ant, Maven and Gradle projects only."
                  | optional,
                timeout
                  | std.number.Integer
                  | doc "Time limit for this build (in seconds). After time is up, Buildserver VM is forcefully terminated. The default is 7200 (2 hours); 0 means no limit."
                  | optional,
                versionCode
                  | std.number.Integer
                  | doc "Specifies to build version xxx, which has a version code of yyy.",
                versionName
                  | String
                  | doc "Specifies to build version xxx, which has a version code of yyy.",
              }
            | doc "Any number of sub-entries can be present, each specifying a version to automatically build from source.",
          Categories
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'Writing,
                    'Time,
                    'Theming,
                    'System,
                    '"Sports & Health",
                    'Security,
                    '"Science & Education",
                    'Reading,
                    '"Phone & SMS",
                    'Navigation,
                    'Multimedia,
                    'Money,
                    'Internet,
                    'Graphics,
                    'Games,
                    'Development,
                    'Connectivity
                  |]
                ]
            )
            | doc "Any number of categories for the application to be placed in.",
          Changelog
            | refs."definitions.url"
            | doc "The URL for the application's changelog."
            | optional,
          CurrentVersion
            | String
            | doc "The name of the version that is the recommended release. There may be newer versions of the application than this (e.g. unstable versions), and there will almost certainly be older ones."
            | optional,
          CurrentVersionCode
            | std.number.Integer
            | doc "The version code corresponding to the CurrentVersion field."
            | optional,
          Description
            | js2n.string.MaxLength 4000
            | doc "DEPRECATED. A full description of the application, relevant to the latest version. Should rather be provided via Fastlane."
            | optional,
          Disabled
            | String
            | doc "If this field is present, the application does not get put into the public index. The value should be a description of why the application is disabled."
            | optional,
          Donate
            | js2n.string.Matches "^https://.*$"
            | doc "The URL to donate to the project."
            | optional,
          IssueTracker
            | refs."definitions.url"
            | doc "The URL for the application's issue tracker."
            | optional,
          Liberapay
            | String
            | doc "The project's Liberapay (https://liberapay.com) user or group name."
            | optional,
          License
            | std.enum.TagOrString
            | [|
              'PublicDomain,
              'xinetd,
              'iMatix,
              'gnuplot,
              'Zlib,
              '"Zimbra-1.3",
              '"Zend-2.0",
              '"ZPL-2.1",
              '"ZPL-2.0",
              '"YPL-1.1",
              'XSkat,
              'Xnet,
              '"XFree86-1.1",
              'X11,
              '"Watcom-1.0",
              'WTFPL,
              'W3C,
              'Vim,
              '"VSL-1.0",
              'Unlicense,
              'Unicode-DFS-2016,
              '"UPL-1.0",
              '"UCL-1.0",
              'Sleepycat,
              '"SimPL-2.0",
              '"SPL-1.0",
              'SMLNJ,
              'SISSL,
              '"SGI-B-2.0",
              'Ruby,
              'RSCPL,
              '"RPSL-1.0",
              '"RPL-1.5",
              '"RPL-1.1",
              '"QPL-1.0",
              '"Python-2.0",
              'PostgreSQL,
              '"PHP-3.01",
              '"PHP-3.0",
              'OpenSSL,
              '"OSL-3.0",
              '"OSL-2.1",
              '"OSL-2.0",
              '"OSL-1.1",
              '"OSL-1.0",
              '"OSET-PL-2.1",
              '"OLDAP-2.8",
              '"OLDAP-2.7",
              '"OLDAP-2.3",
              'OGTSL,
              '"OFL-1.1-no-RFN",
              '"OFL-1.1-RFN",
              '"OFL-1.1",
              '"OFL-1.0",
              '"ODbL-1.0",
              '"OCLC-2.0",
              'Nokia,
              'Naumen,
              'NTP,
              '"NPOSL-3.0",
              '"NPL-1.1",
              '"NPL-1.0",
              'NOSL,
              'NGPL,
              'NCSA,
              '"NASA-1.3",
              'Multics,
              '"MulanPSL-2.0",
              'Motosoto,
              'MirOS,
              'MS-RL,
              'MS-PL,
              '"MPL-2.0-no-copyleft-exception",
              '"MPL-2.0",
              '"MPL-1.1",
              '"MPL-1.0",
              'MIT-CMU,
              'MIT-0,
              'MIT,
              '"LiLiQ-Rplus-1.1",
              '"LiLiQ-R-1.1",
              '"LiLiQ-P-1.1",
              '"LPPL-1.3c",
              '"LPPL-1.3a",
              '"LPPL-1.2",
              '"LPL-1.02",
              '"LPL-1.0",
              '"LGPL-3.0-or-later",
              '"LGPL-3.0-only",
              '"LGPL-2.1-or-later",
              '"LGPL-2.1-only",
              '"LGPL-2.0-or-later",
              '"LGPL-2.0-only",
              'Intel,
              'Imlib2,
              'ISC,
              '"IPL-1.0",
              'IPA,
              'IJG,
              'HPND,
              '"GPL-3.0-or-later",
              '"GPL-3.0-only",
              '"GPL-2.0-or-later",
              '"GPL-2.0-only",
              '"GFDL-1.3-or-later",
              '"GFDL-1.3-only",
              '"GFDL-1.2-or-later",
              '"GFDL-1.2-only",
              '"GFDL-1.1-or-later",
              '"GFDL-1.1-only",
              '"Frameworx-1.0",
              'Fair,
              'FTL,
              'FSFAP,
              'Entessa,
              '"EUPL-1.2",
              '"EUPL-1.1",
              'EUDatagrid,
              '"EPL-2.0",
              '"EPL-1.0",
              '"EFL-2.0",
              '"EFL-1.0",
              '"ECL-2.0",
              '"ECL-1.0",
              '"Condor-1.1",
              'ClArtistic,
              '"CUA-OPL-1.0",
              '"CPL-1.0",
              '"CPAL-1.0",
              'CNRI-Python,
              'CECILL-C,
              'CECILL-B,
              '"CECILL-2.1",
              '"CECILL-2.0",
              '"CDDL-1.0",
              '"CC0-1.0",
              '"CC-BY-SA-4.0",
              '"CC-BY-4.0",
              '"CATOSL-1.1",
              '"CAL-1.0-Combined-Work-Exception",
              '"CAL-1.0",
              '"BitTorrent-1.1",
              '"BSL-1.0",
              'BSD-4-Clause,
              'BSD-3-Clause-LBNL,
              'BSD-3-Clause-Clear,
              'BSD-3-Clause,
              'BSD-2-Clause-Patent,
              'BSD-2-Clause-FreeBSD,
              'BSD-2-Clause,
              'BSD-1-Clause,
              'Beerware,
              '"Artistic-2.0",
              '"Artistic-1.0-cl8",
              '"Artistic-1.0-Perl",
              '"Artistic-1.0",
              '"Apache-2.0",
              '"Apache-1.1",
              '"Apache-1.0",
              '"APSL-2.0",
              '"APSL-1.2",
              '"APSL-1.1",
              '"APSL-1.0",
              '"APL-1.0",
              '"AGPL-3.0-or-later",
              '"AGPL-3.0-only",
              '"AFL-3.0",
              '"AFL-2.1",
              '"AFL-2.0",
              '"AFL-1.2",
              '"AFL-1.1",
              'AAL,
              '"0BSD"
            |]
            | doc "",
          Litecoin
            | js2n.string.Matches
              "^([LM3][a-km-zA-HJ-NP-Z1-9]{26,33}|ltc1[a-km-z0-9]{39})$"
            | doc "A Litecoin address for donating to the project."
            | optional,
          MaintainerNotes
            | js2n.string.MaxLength 4000
            | doc "This is a multi-line field using the same rules and syntax as the description. It's used to record notes for F-Droid maintainers to assist in maintaining and updating the application in the repository."
            | optional,
          Name
            | String
            | doc "The title of the application, with optional descriptive phrase."
            | optional,
          NoSourceSince
            | String
            | doc "In case we are missing the source code for the CurrentVersion reported by Upstream, or that Non-Free elements have been introduced, this defines the first version that began to miss source code."
            | optional,
          OpenCollective
            | String
            | doc "The project's OpenCollective (https://opencollective.com) user or group name."
            | optional,
          Repo
            | String
            | doc "The repository location. Usually a git: or svn: URL, for example."
            | optional,
          RepoType
            | std.enum.TagOrString
            | [| 'srclib, 'bzr, 'hg, 'git-svn, 'svn, 'git |]
            | doc "The type of repository - for automatic building from source."
            | optional,
          RequiresRoot
            | Bool
            | doc "Whether the application requires root privileges to be usable."
            | optional,
          SourceCode
            | refs."definitions.url"
            | doc "The URL to view or obtain the application's source code. This should be something human-friendly."
            | optional,
          Summary
            | js2n.string.MaxLength 80
            | doc "DEPRECATED. A brief summary of what the application is. Should rather be provided via Fastlane."
            | optional,
          Translation
            | refs."definitions.url"
            | doc "The URL for the application's translation portal or at least a guide."
            | optional,
          UpdateCheckData
            | String
            | doc "Used in conjunction with UpdateCheckMode for certain modes."
            | optional,
          UpdateCheckIgnore
            | String
            | doc "When checking for updates (via UpdateCheckMode) this can be used to specify a regex which, if matched against the version name, causes that version to be ignored."
            | optional,
          UpdateCheckMode
            | std.contract.any_of
              [
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'HTTP, 'Static, 'None |] ],
                js2n.string.Matches "^RepoManifest(/.+)?$",
                js2n.string.Matches "^Tags( .*)?$"
              ]
            | doc "This determines the method using for determining when new releases are available - in other words, the updating of the CurrentVersion and CurrentVersionCode fields in the metadata by the fdroid checkupdates process."
            | optional,
          UpdateCheckName
            | std.contract.any_of
              [
                String,
                std.contract.Sequence [ std.enum.TagOrString, [| 'Ignore |] ]
              ]
            | doc "When checking for updates (via UpdateCheckMode) this can be used to specify the package name to search for. Useful when apps have a static package name but change it programmatically in some app flavors, by e.g. appending “.open” or “.free” at the end of the package name."
            | optional,
          VercodeOperation
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array String
            | doc "A list of operations to be applied to the vercode obtained by the defined UpdateCheckMode. %c will be replaced by the actual vercode, and each string will be passed to python's eval function to calculate a version code."
            | optional,
          WebSite
            | refs."definitions.url"
            | doc "The URL for the application's web site."
            | optional,
        }
      ]