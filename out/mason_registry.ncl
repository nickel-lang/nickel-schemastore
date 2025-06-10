# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.components:bin" =
        std.contract.Sequence
            [ { _ | String }, js2n.record.FieldsMatch "^[a-zA-Z0-9_\\-\\.]+$" ],
      "definitions.components:deprecation" =
        {
            message
              | String
              | doc "Deprecation message shown to users. Should include alternative installation methods if available.",
            since
              | String
              | doc "The version number when the deprecation was made.",
          },
      "definitions.components:neovim" = { lspconfig | String | optional, .. },
      "definitions.components:opt" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_\\-\\./]+$"
            ],
      "definitions.components:schemas" =
        {
            lsp
              | js2n.string.Matches "^(vscode:)?https://"
              | doc "A URL to where the LSP JSON schema can be downloaded from. If the provided URL is a VSCode package.json you MUST prefix the url with vscode:"
              | optional,
          },
      "definitions.components:share" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_\\-\\./]+$"
            ],
      "definitions.components:source" =
        std.contract.Sequence
            [
              refs."definitions.components:source.definitions.Source",
              {
                version_overrides
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.components:source.definitions.Source",
                        {
                          constraint
                            | js2n.string.Matches
                              "^semver:(<=)?v?\\d+\\.\\d+\\.\\d+",
                          ..
                        }
                      ]
                  )
                  | optional,
                ..
              }
            ],
      "definitions.components:source.definitions.Source" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.components:sources:cargo", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:composer", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:gem", { _ | Dyn } ],
              refs."definitions.components:sources:generic",
              refs."definitions.components:sources:github",
              std.contract.Sequence
                [ refs."definitions.components:sources:golang", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:luarocks", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:npm", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:nuget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:opam", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:openvsx", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.components:sources:pypi", { _ | Dyn } ]
            ],
      "definitions.components:sources:build" =
        {
            env
              | { _ | String }
              | js2n.record.FieldsMatch "^[A-Z0-9_]+$"
              | optional,
            run
              | String
              | doc "The shell script to run. Platform sensitive (bash on Unix, powershell on Windows).",
            staged
              | Bool
              | doc "Whether to run the build script in a staging location (defaults to true)."
              | optional,
            target
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.enums:platform", String ]
                  ),
                  std.contract.Sequence
                    [ refs."definitions.enums:platform", String ]
                ]
              | optional,
            ..
          },
      "definitions.components:sources:cargo" =
        {
            id | js2n.string.Matches "^pkg:cargo/.+@.+",
            supported_platforms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.enums:platform", String ]
              )
              | doc "List of platforms supported by the cargo package."
              | optional,
            ..
          },
      "definitions.components:sources:composer" =
        { id | js2n.string.Matches "^pkg:composer/.+/.+@.+", .. },
      "definitions.components:sources:gem" =
        {
            extra_packages
              | Array String
              | doc "Extra gem packages required by the main package to function."
              | optional,
            id | js2n.string.Matches "^pkg:gem/.+@.+",
            supported_platforms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.enums:platform", String ]
              )
              | doc "List of platforms supported by the gem package."
              | optional,
            ..
          },
      "definitions.components:sources:generic" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.components:sources:generic:download",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.components:sources:generic:build",
                  { _ | Dyn }
                ]
            ],
      "definitions.components:sources:generic:build" =
        {
            build
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.components:sources:build",
                        { _ | Dyn }
                      ]
                  ),
                  std.contract.Sequence
                    [ refs."definitions.components:sources:build", { _ | Dyn } ]
                ],
            id | js2n.string.Matches "^pkg:generic/.+@.+",
            ..
          },
      "definitions.components:sources:generic:download" =
        {
            download
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.components:sources:generic:download.definitions.Download",
                        { _ | Dyn }
                      ]
                  ),
                  std.contract.Sequence
                    [
                      refs."definitions.components:sources:generic:download.definitions.Download",
                      { _ | Dyn }
                    ]
                ],
            id | js2n.string.Matches "^pkg:generic/.+@.+",
            ..
          },
      "definitions.components:sources:generic:download.definitions.Download" =
        {
            files
              | { _ | js2n.string.Matches "^https?://" }
              | js2n.record.FieldsMatch "^[a-zA-Z0-9_\\-\\.]+$",
            target
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.enums:platform", String ]
                  ),
                  std.contract.Sequence
                    [ refs."definitions.enums:platform", String ]
                ]
              | optional,
            ..
          },
      "definitions.components:sources:github" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.components:sources:github:release",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.components:sources:github:build",
                  { _ | Dyn }
                ]
            ],
      "definitions.components:sources:github:build" =
        {
            build
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.components:sources:build",
                        { _ | Dyn }
                      ]
                  ),
                  std.contract.Sequence
                    [ refs."definitions.components:sources:build", { _ | Dyn } ]
                ],
            id | js2n.string.Matches "^pkg:github/.+/.+@.+",
            ..
          },
      "definitions.components:sources:github:release" =
        {
            asset
              | std.contract.any_of
                [
                  Array
                    {
                      file | std.contract.any_of [ Array String, String ],
                      target
                        | std.contract.any_of
                          [
                            Array (
                              std.contract.Sequence
                                [ refs."definitions.enums:platform", String ]
                            ),
                            std.contract.Sequence
                              [ refs."definitions.enums:platform", String ]
                          ],
                      ..
                    },
                  { file | std.contract.any_of [ Array String, String ], .. }
                ],
            id | js2n.string.Matches "^pkg:github/.+/.+@.+",
            ..
          },
      "definitions.components:sources:golang" =
        {
            extra_packages
              | Array String
              | doc "Extra golang packages required by the main package to function."
              | optional,
            id | js2n.string.Matches "^pkg:golang/.+/.+@.+",
            ..
          },
      "definitions.components:sources:luarocks" =
        { id | js2n.string.Matches "^pkg:luarocks/.+@.+", .. },
      "definitions.components:sources:npm" =
        {
            extra_packages
              | Array String
              | doc "Extra npm packages required by the main package to function."
              | optional,
            id | js2n.string.Matches "^pkg:npm/.+@.+",
            ..
          },
      "definitions.components:sources:nuget" =
        { id | js2n.string.Matches "^pkg:nuget/.+@.+", .. },
      "definitions.components:sources:opam" =
        { id | js2n.string.Matches "^pkg:opam/.+@.+", .. },
      "definitions.components:sources:openvsx" =
        {
            download
              | std.contract.any_of
                [
                  Array
                    {
                      file | std.contract.any_of [ Array String, String ],
                      target
                        | std.contract.any_of
                          [
                            Array (
                              std.contract.Sequence
                                [ refs."definitions.enums:platform", String ]
                            ),
                            std.contract.Sequence
                              [ refs."definitions.enums:platform", String ]
                          ],
                      target_platform
                        | std.enum.TagOrString
                        | [|
                          'universal,
                          'web,
                          'darwin-arm64,
                          'darwin-x64,
                          'alpine-arm64,
                          'alpine-x64,
                          'linux-armhf,
                          'linux-arm64,
                          'linux-x64,
                          'win32-arm64,
                          'win32-ia32,
                          'in32-x64
                        |]
                        | optional,
                      ..
                    },
                  { file | std.contract.any_of [ Array String, String ], .. }
                ],
            id | js2n.string.Matches "^pkg:openvsx/.+/.+@.+",
            ..
          },
      "definitions.components:sources:pypi" =
        {
            extra_packages
              | Array String
              | doc "Extra pypi packages required by the main package to function."
              | optional,
            id | js2n.string.Matches "^pkg:pypi/.+@.+",
            supported_platforms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.enums:platform", String ]
              )
              | doc "List of platforms supported by the pypi package."
              | optional,
            ..
          },
      "definitions.enums:category" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Runtime, 'Linter, 'LSP, 'Formatter, 'DAP, 'Compiler |]
            ],
      "definitions.enums:license" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.enums:spdx-license", String ],
              js2n.Const "proprietary",
              js2n.string.Matches
                "^[a-zA-Z0-9-.:]+\\+?(?: +(?:WITH|AND|OR) +[a-zA-Z0-9-.:]+\\+?)*$"
            ],
      "definitions.enums:platform" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'win_x86,
                'win_x64,
                'win_armv7l,
                'win_armv6l,
                'win_arm64,
                'win_arm,
                'win,
                'linux_x86_openbsd,
                'linux_x86_musl,
                'linux_x86_gnu,
                'linux_x86,
                'linux_x64_openbsd,
                'linux_x64_musl,
                'linux_x64_gnu,
                'linux_x64,
                'linux_armv7l,
                'linux_armv7_gnu,
                'linux_armv6l,
                'linux_armv6_gnu,
                'linux_arm_gnu,
                'linux_arm64_openbsd,
                'linux_arm64_musl,
                'linux_arm64_gnu,
                'linux_arm64,
                'linux_arm,
                'linux,
                'darwin_x64,
                'darwin_arm64,
                'darwin,
                'unix
              |]
            ],
      "definitions.enums:spdx-license" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"ZPL-2.1",
                '"ZPL-2.0",
                '"ZPL-1.1",
                'zlib-acknowledgement,
                'Zlib,
                '"Zimbra-1.4",
                '"Zimbra-1.3",
                '"Zend-2.0",
                'Zeeff,
                'Zed,
                '"YPL-1.1",
                '"YPL-1.0",
                'xzoom,
                'XSkat,
                'xpp,
                'Xnet,
                'xlock,
                'xkeyboard-config-Zinoviev,
                'xinetd,
                '"XFree86-1.1",
                'Xfig,
                'Xerox,
                '"Xdebug-1.03",
                'X11-swapped,
                'X11-distribute-modifications-variant,
                'X11,
                'wxWindows,
                'wwl,
                'WTFPL,
                'Wsuipa,
                'Widget-Workshop,
                '"Watcom-1.0",
                'w3m,
                'W3C-20150513,
                'W3C-19980720,
                'W3C,
                '"VSL-1.0",
                'VOSTROM,
                'Vim,
                'URT-RLE,
                '"UPL-1.0",
                'Unlicense,
                'UnixCrypt,
                'Unicode-TOU,
                'Unicode-DFS-2016,
                'Unicode-DFS-2015,
                '"Unicode-3.0",
                'UMich-Merit,
                'ulem,
                '"UCL-1.0",
                'UCAR,
                '"Ubuntu-font-1.0",
                '"TU-Berlin-2.0",
                '"TU-Berlin-1.0",
                'TTYP0,
                'TTWL,
                'TrustedQSL,
                '"TPL-1.0",
                'TPDL,
                'TOSL,
                '"TORQUE-1.1",
                'TMate,
                'threeparttable,
                'ThirdEye,
                '"TGPPL-1.0",
                'TermReadKey,
                'TCP-wrappers,
                'TCL,
                '"TAPR-OHL-1.0",
                'Symlinks,
                'swrule,
                'SWL,
                'SunPro,
                'Sun-PPP-2000,
                'Sun-PPP,
                '"SugarCRM-1.1.3",
                'StandardML-NJ,
                '"SSPL-1.0",
                'SSLeay-standalone,
                'SSH-short,
                'SSH-OpenSSH,
                'ssh-keyscan,
                '"SPL-1.0",
                'Spencer-99,
                'Spencer-94,
                'Spencer-86,
                'Soundex,
                'softSurfer,
                'snprintf,
                'SNIA,
                'SMPPL,
                'SMLNJ,
                'SMAIL-GPL,
                'Sleepycat,
                'SL,
                '"SISSL-1.2",
                'SISSL,
                '"SimPL-2.0",
                '"SHL-0.51",
                '"SHL-0.5",
                'SGP4,
                'SGI-OpenGL,
                '"SGI-B-2.0",
                '"SGI-B-1.1",
                '"SGI-B-1.0",
                '"Sendmail-Open-Source-1.1",
                '"Sendmail-8.23",
                'Sendmail,
                'SchemeReport,
                'SCEA,
                'Saxpath,
                '"SAX-PD-2.0",
                'SAX-PD,
                'Ruby-pty,
                'Ruby,
                'RSCPL,
                'RSA-MD,
                '"RPSL-1.0",
                '"RPL-1.5",
                '"RPL-1.1",
                '"RHeCos-1.1",
                'Rdisc,
                'radvd,
                '"QPL-1.0-INRIA-2004",
                '"QPL-1.0",
                'Qhull,
                'python-ldap,
                '"Python-2.0.1",
                '"Python-2.0",
                'psutils,
                'psfrag,
                '"PSF-2.0",
                'PPL,
                'PostgreSQL,
                '"PolyForm-Small-Business-1.0.0",
                '"PolyForm-Noncommercial-1.0.0",
                'pnmstitch,
                'Plexus,
                'pkgconf,
                'Pixar,
                '"PHP-3.01",
                '"PHP-3.0",
                '"PDDL-1.0",
                '"Parity-7.0.0",
                '"Parity-6.0.0",
                'PADL,
                '"OSL-3.0",
                '"OSL-2.1",
                '"OSL-2.0",
                '"OSL-1.1",
                '"OSL-1.0",
                '"OSET-PL-2.1",
                '"OPUBL-1.0",
                '"OPL-UK-3.0",
                '"OPL-1.0",
                'OpenVision,
                'OpenSSL-standalone,
                'OpenSSL,
                '"OpenPBS-2.3",
                'OML,
                '"OLFL-1.3",
                '"OLDAP-2.8",
                '"OLDAP-2.7",
                '"OLDAP-2.6",
                '"OLDAP-2.5",
                '"OLDAP-2.4",
                '"OLDAP-2.3",
                '"OLDAP-2.2.2",
                '"OLDAP-2.2.1",
                '"OLDAP-2.2",
                '"OLDAP-2.1",
                '"OLDAP-2.0.1",
                '"OLDAP-2.0",
                '"OLDAP-1.4",
                '"OLDAP-1.3",
                '"OLDAP-1.2",
                '"OLDAP-1.1",
                'OGTSL,
                '"OGL-UK-3.0",
                '"OGL-UK-2.0",
                '"OGL-UK-1.0",
                '"OGL-Canada-2.0",
                '"OGDL-Taiwan-1.0",
                '"OGC-1.0",
                '"OFL-1.1-RFN",
                '"OFL-1.1-no-RFN",
                '"OFL-1.1",
                '"OFL-1.0-RFN",
                '"OFL-1.0-no-RFN",
                '"OFL-1.0",
                'OFFIS,
                '"ODC-By-1.0",
                '"ODbL-1.0",
                '"OCLC-2.0",
                'OCCT-PL,
                'OAR,
                '"O-UDA-1.0",
                'Nunit,
                'NTP-0,
                'NTP,
                'NRL,
                '"NPOSL-3.0",
                '"NPL-1.1",
                '"NPL-1.0",
                'Noweb,
                'NOSL,
                'Nokia,
                'NLPL,
                '"NLOD-2.0",
                '"NLOD-1.0",
                'NIST-Software,
                'NIST-PD-fallback,
                'NIST-PD,
                '"NICTA-1.0",
                'NGPL,
                'Newsletr,
                'NetCDF,
                'Net-SNMP,
                'NCSA,
                'NCL,
                '"NCGL-UK-2.0",
                'NCBI-PD,
                '"NBPL-1.0",
                'Naumen,
                '"NASA-1.3",
                'NAIST-2003,
                'Mup,
                'Multics,
                '"MulanPSL-2.0",
                '"MulanPSL-1.0",
                'MTLL,
                'MS-RL,
                'MS-PL,
                'MS-LPL,
                'mplus,
                '"MPL-2.0-no-copyleft-exception",
                '"MPL-2.0",
                '"MPL-1.1",
                '"MPL-1.0",
                'mpich2,
                'mpi-permissive,
                'MPEG-SSG,
                'Motosoto,
                'MMIXware,
                'MITNFA,
                'MIT-Wu,
                'MIT-testregex,
                'MIT-open-group,
                'MIT-Modern-Variant,
                'MIT-Khronos-old,
                'MIT-Festival,
                'MIT-feh,
                'MIT-enna,
                'MIT-CMU,
                'MIT-Click,
                'MIT-advertising,
                'MIT-0,
                'MIT,
                'MirOS,
                'MIPS,
                'Minpack,
                'metamail,
                'McPhee-slideshow,
                'Martin-Birgmeier,
                'man2html,
                'MakeIndex,
                'mailprio,
                'magaz,
                'Mackerras-3-Clause-acknowledgment,
                'Mackerras-3-Clause,
                '"LZMA-SDK-9.22",
                '"LZMA-SDK-9.11-to-9.20",
                'Lucida-Bitmap-Fonts,
                'lsof,
                '"LPPL-1.3c",
                '"LPPL-1.3a",
                '"LPPL-1.2",
                '"LPPL-1.1",
                '"LPPL-1.0",
                '"LPL-1.02",
                '"LPL-1.0",
                'LPD-document,
                'LOOP,
                'Linux-OpenIB,
                'Linux-man-pages-copyleft-var,
                'Linux-man-pages-copyleft-2-para,
                'Linux-man-pages-copyleft,
                'Linux-man-pages-1-para,
                '"LiLiQ-Rplus-1.1",
                '"LiLiQ-R-1.1",
                '"LiLiQ-P-1.1",
                'libutil-David-Nugent,
                'libtiff,
                '"libselinux-1.0",
                '"libpng-2.0",
                'Libpng,
                'LGPLLR,
                '"LGPL-3.0-or-later",
                '"LGPL-3.0-only",
                '"LGPL-3.0+",
                '"LGPL-3.0",
                '"LGPL-2.1-or-later",
                '"LGPL-2.1-only",
                '"LGPL-2.1+",
                '"LGPL-2.1",
                '"LGPL-2.0-or-later",
                '"LGPL-2.0-only",
                '"LGPL-2.0+",
                '"LGPL-2.0",
                'Leptonica,
                'Latex2e-translated-notice,
                'Latex2e,
                '"LAL-1.3",
                '"LAL-1.2",
                'Knuth-CTAN,
                'Kazlib,
                'Kastrup,
                'JSON,
                'JPNIC,
                'JPL-image,
                '"JasPer-2.0",
                'Jam,
                'ISC-Veillard,
                'ISC,
                '"IPL-1.0",
                'IPA,
                '"Interbase-1.0",
                'Intel-ACPI,
                'Intel,
                'InnoSetup,
                '"Inner-Net-2.0",
                'Info-ZIP,
                'Imlib2,
                'iMatix,
                'ImageMagick,
                'IJG-short,
                'IJG,
                'IEC-Code-Components-EULA,
                'ICU,
                'IBM-pibs,
                'HTMLTIDY,
                'HPND-UC-export-US,
                'HPND-UC,
                'HPND-sell-variant-MIT-disclaimer-rev,
                'HPND-sell-variant-MIT-disclaimer,
                'HPND-sell-variant,
                'HPND-sell-regexpr,
                'HPND-sell-MIT-disclaimer-xserver,
                'HPND-Pbmplus,
                'HPND-Netrek,
                'HPND-MIT-disclaimer,
                'HPND-merchantability-variant,
                'HPND-Markus-Kuhn,
                'HPND-Kevlin-Henney,
                'HPND-Intel,
                'HPND-INRIA-IMAG,
                'HPND-Fenneberg-Livingston,
                'HPND-export2-US,
                'HPND-export-US-modify,
                'HPND-export-US-acknowledgement,
                'HPND-export-US,
                'HPND-doc-sell,
                'HPND-doc,
                'HPND-DEC,
                'HPND,
                'HP-1989,
                'HP-1986,
                '"Hippocratic-2.1",
                'HIDAPI,
                'hdparm,
                'HaskellReport,
                'Gutmann,
                'gtkbook,
                '"gSOAP-1.3b",
                'Graphics-Gems,
                '"GPL-3.0-with-GCC-exception",
                '"GPL-3.0-with-autoconf-exception",
                '"GPL-3.0-or-later",
                '"GPL-3.0-only",
                '"GPL-3.0+",
                '"GPL-3.0",
                '"GPL-2.0-with-GCC-exception",
                '"GPL-2.0-with-font-exception",
                '"GPL-2.0-with-classpath-exception",
                '"GPL-2.0-with-bison-exception",
                '"GPL-2.0-with-autoconf-exception",
                '"GPL-2.0-or-later",
                '"GPL-2.0-only",
                '"GPL-2.0+",
                '"GPL-2.0",
                '"GPL-1.0-or-later",
                '"GPL-1.0-only",
                '"GPL-1.0+",
                '"GPL-1.0",
                'gnuplot,
                'GLWTPL,
                'Glulxe,
                'Glide,
                'GL2PS,
                'Giftware,
                '"GFDL-1.3-or-later",
                '"GFDL-1.3-only",
                '"GFDL-1.3-no-invariants-or-later",
                '"GFDL-1.3-no-invariants-only",
                '"GFDL-1.3-invariants-or-later",
                '"GFDL-1.3-invariants-only",
                '"GFDL-1.3",
                '"GFDL-1.2-or-later",
                '"GFDL-1.2-only",
                '"GFDL-1.2-no-invariants-or-later",
                '"GFDL-1.2-no-invariants-only",
                '"GFDL-1.2-invariants-or-later",
                '"GFDL-1.2-invariants-only",
                '"GFDL-1.2",
                '"GFDL-1.1-or-later",
                '"GFDL-1.1-only",
                '"GFDL-1.1-no-invariants-or-later",
                '"GFDL-1.1-no-invariants-only",
                '"GFDL-1.1-invariants-or-later",
                '"GFDL-1.1-invariants-only",
                '"GFDL-1.1",
                'generic-xts,
                'GD,
                'GCR-docs,
                'Game-Programming-Gems,
                'fwlw,
                'Furuseth,
                'FTL,
                'FSFULLRWD,
                'FSFULLR,
                'FSFUL,
                'FSFAP-no-warranty-disclaimer,
                'FSFAP,
                'FreeImage,
                'FreeBSD-DOC,
                '"Frameworx-1.0",
                'Ferguson-Twofish,
                'FDK-AAC,
                'FBM,
                'Fair,
                'Eurosym,
                '"EUPL-1.2",
                '"EUPL-1.1",
                '"EUPL-1.0",
                'EUDatagrid,
                '"etalab-2.0",
                '"ErlPL-1.1",
                '"EPL-2.0",
                '"EPL-1.0",
                'EPICS,
                'Entessa,
                '"Elastic-2.0",
                'eGenix,
                '"EFL-2.0",
                '"EFL-1.0",
                '"eCos-2.0",
                '"ECL-2.0",
                '"ECL-1.0",
                'dvipdfm,
                'dtoa,
                'DSDP,
                '"DRL-1.1",
                '"DRL-1.0",
                'Dotseqn,
                'DocBook-XML,
                'DocBook-Stylesheet,
                'DocBook-Schema,
                'DocBook-DTD,
                'DOC,
                '"DL-DE-ZERO-2.0",
                '"DL-DE-BY-2.0",
                'diffmark,
                'DEC-3-Clause,
                '"D-FSL-1.0",
                'cve-tou,
                'curl,
                'Cube,
                '"CUA-OPL-1.0",
                'CrystalStacker,
                'CryptoSwift,
                'Crossword,
                'Cronyx,
                '"CPOL-1.02",
                '"CPL-1.0",
                '"CPAL-1.0",
                'Cornell-Lossless-JPEG,
                '"copyleft-next-0.3.1",
                '"copyleft-next-0.3.0",
                '"Condor-1.1",
                '"Community-Spec-1.0",
                '"COIL-1.0",
                'CNRI-Python-GPL-Compatible,
                'CNRI-Python,
                'CNRI-Jython,
                'CMU-Mach-nodoc,
                'CMU-Mach,
                'Clips,
                'ClArtistic,
                'checkmk,
                'check-cvs,
                'CFITSIO,
                '"CERN-OHL-W-2.0",
                '"CERN-OHL-S-2.0",
                '"CERN-OHL-P-2.0",
                '"CERN-OHL-1.2",
                '"CERN-OHL-1.1",
                'CECILL-C,
                'CECILL-B,
                '"CECILL-2.1",
                '"CECILL-2.0",
                '"CECILL-1.1",
                '"CECILL-1.0",
                '"CDLA-Sharing-1.0",
                '"CDLA-Permissive-2.0",
                '"CDLA-Permissive-1.0",
                '"CDL-1.0",
                '"CDDL-1.1",
                '"CDDL-1.0",
                '"CC0-1.0",
                '"CC-SA-1.0",
                '"CC-PDM-1.0",
                'CC-PDDC,
                '"CC-BY-SA-4.0",
                '"CC-BY-SA-3.0-IGO",
                '"CC-BY-SA-3.0-DE",
                '"CC-BY-SA-3.0-AT",
                '"CC-BY-SA-3.0",
                '"CC-BY-SA-2.5",
                '"CC-BY-SA-2.1-JP",
                '"CC-BY-SA-2.0-UK",
                '"CC-BY-SA-2.0",
                '"CC-BY-SA-1.0",
                '"CC-BY-ND-4.0",
                '"CC-BY-ND-3.0-DE",
                '"CC-BY-ND-3.0",
                '"CC-BY-ND-2.5",
                '"CC-BY-ND-2.0",
                '"CC-BY-ND-1.0",
                '"CC-BY-NC-SA-4.0",
                '"CC-BY-NC-SA-3.0-IGO",
                '"CC-BY-NC-SA-3.0-DE",
                '"CC-BY-NC-SA-3.0",
                '"CC-BY-NC-SA-2.5",
                '"CC-BY-NC-SA-2.0-UK",
                '"CC-BY-NC-SA-2.0-FR",
                '"CC-BY-NC-SA-2.0-DE",
                '"CC-BY-NC-SA-2.0",
                '"CC-BY-NC-SA-1.0",
                '"CC-BY-NC-ND-4.0",
                '"CC-BY-NC-ND-3.0-IGO",
                '"CC-BY-NC-ND-3.0-DE",
                '"CC-BY-NC-ND-3.0",
                '"CC-BY-NC-ND-2.5",
                '"CC-BY-NC-ND-2.0",
                '"CC-BY-NC-ND-1.0",
                '"CC-BY-NC-4.0",
                '"CC-BY-NC-3.0-DE",
                '"CC-BY-NC-3.0",
                '"CC-BY-NC-2.5",
                '"CC-BY-NC-2.0",
                '"CC-BY-NC-1.0",
                '"CC-BY-4.0",
                '"CC-BY-3.0-US",
                '"CC-BY-3.0-NL",
                '"CC-BY-3.0-IGO",
                '"CC-BY-3.0-DE",
                '"CC-BY-3.0-AU",
                '"CC-BY-3.0-AT",
                '"CC-BY-3.0",
                '"CC-BY-2.5-AU",
                '"CC-BY-2.5",
                '"CC-BY-2.0",
                '"CC-BY-1.0",
                '"CATOSL-1.1",
                'Catharon,
                'Caldera-no-preamble,
                'Caldera,
                '"CAL-1.0-Combined-Work-Exception",
                '"CAL-1.0",
                '"C-UDA-1.0",
                '"bzip2-1.0.6",
                '"bzip2-1.0.5",
                '"BUSL-1.1",
                '"BSL-1.0",
                'BSD-Systemics-W3Works,
                'BSD-Systemics,
                'BSD-Source-Code,
                'BSD-Source-beginning-file,
                'BSD-Protection,
                'BSD-Inferno-Nettverk,
                'BSD-Attribution-HPND-disclaimer,
                'BSD-Advertising-Acknowledgement,
                '"BSD-4.3TAHOE",
                '"BSD-4.3RENO",
                'BSD-4-Clause-UC,
                'BSD-4-Clause-Shortened,
                'BSD-4-Clause,
                'BSD-3-Clause-Sun,
                'BSD-3-Clause-Open-MPI,
                'BSD-3-Clause-No-Nuclear-Warranty,
                'BSD-3-Clause-No-Nuclear-License-2014,
                'BSD-3-Clause-No-Nuclear-License,
                'BSD-3-Clause-No-Military-License,
                'BSD-3-Clause-Modification,
                'BSD-3-Clause-LBNL,
                'BSD-3-Clause-HP,
                'BSD-3-Clause-flex,
                'BSD-3-Clause-Clear,
                'BSD-3-Clause-Attribution,
                'BSD-3-Clause-acpica,
                'BSD-3-Clause,
                'BSD-2-Clause-Views,
                'BSD-2-Clause-Patent,
                'BSD-2-Clause-NetBSD,
                'BSD-2-Clause-FreeBSD,
                'BSD-2-Clause-first-lines,
                'BSD-2-Clause-Darwin,
                'BSD-2-Clause,
                'BSD-1-Clause,
                'Brian-Gladman-3-Clause,
                'Brian-Gladman-2-Clause,
                'Borceux,
                'Boehm-GC-without-fee,
                'Boehm-GC,
                '"BlueOak-1.0.0",
                'blessing,
                '"BitTorrent-1.1",
                '"BitTorrent-1.0",
                'Bitstream-Vera,
                'Bitstream-Charter,
                'Beerware,
                'bcrypt-Solar-Designer,
                'Barr,
                'Bahyph,
                'Baekmuk,
                '"ASWF-Digital-Assets-1.1",
                '"ASWF-Digital-Assets-1.0",
                '"Artistic-2.0",
                '"Artistic-1.0-Perl",
                '"Artistic-1.0-cl8",
                '"Artistic-1.0",
                'Arphic-1999,
                '"APSL-2.0",
                '"APSL-1.2",
                '"APSL-1.1",
                '"APSL-1.0",
                'App-s2p,
                '"APL-1.0",
                'APAFML,
                '"Apache-2.0",
                '"Apache-1.1",
                '"Apache-1.0",
                'any-OSI-perl-modules,
                'any-OSI,
                'ANTLR-PD-fallback,
                'ANTLR-PD,
                'AMPAS,
                'AML-glslang,
                'AML,
                'AMDPLPA,
                'AMD-newlib,
                'Aladdin,
                '"AGPL-3.0-or-later",
                '"AGPL-3.0-only",
                '"AGPL-3.0",
                '"AGPL-1.0-or-later",
                '"AGPL-1.0-only",
                '"AGPL-1.0",
                'Afmparse,
                '"AFL-3.0",
                '"AFL-2.1",
                '"AFL-2.0",
                '"AFL-1.2",
                '"AFL-1.1",
                'ADSL,
                'Adobe-Utopia,
                'Adobe-Glyph,
                'Adobe-Display-PostScript,
                'Adobe-2006,
                'AdaCore-doc,
                'Abstyles,
                'AAL,
                '"3D-Slicer-1.0",
                '"0BSD"
              |]
            ],
    }
    in
  {
      bin | refs."definitions.components:bin" | optional,
      categories | Array refs."definitions.enums:category",
      ci_skip
        | std.contract.any_of [ Bool, Array refs."definitions.enums:platform" ]
        | optional,
      deprecation | refs."definitions.components:deprecation" | optional,
      description
        | String
        | doc "The description of the package. Usually sourced upstream.",
      homepage
        | js2n.string.Matches "^https?://"
        | doc "A URL to the package's homepage.",
      languages | Array String,
      licenses | js2n.array.MinItems 1 | Array refs."definitions.enums:license",
      name
        | String
        | doc "The package name. MUST be unique within the registry it belongs to.",
      neovim | refs."definitions.components:neovim" | optional,
      opt | refs."definitions.components:opt" | optional,
      schemas | refs."definitions.components:schemas" | optional,
      share | refs."definitions.components:share" | optional,
      source | refs."definitions.components:source" | { _ | Dyn },
    }