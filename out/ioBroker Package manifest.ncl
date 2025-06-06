# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.disallowNodeProcessParams" =
        std.contract.not
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "nodeProcessParams" ],
                Array Dyn
              ]),
      "definitions.iobrokerObject" =
        { _id | String, common | { _ | Dyn } | optional, type | String, .. },
      "definitions.isCompactTrue" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { compact | std.contract.Equal true, .. },
              Array Dyn
            ],
      "definitions.license" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'HPND-doc-sell,
                'Nokia,
                '"RPL-1.5",
                '"CC-BY-NC-ND-3.0-DE",
                'HPND-Pbmplus,
                '"CC-BY-ND-2.5",
                '"OGL-Canada-2.0",
                'IJG,
                '"SISSL-1.2",
                '"BitTorrent-1.0",
                '"RPSL-1.0",
                'blessing,
                '"PHP-3.01",
                'Unicode-DFS-2016,
                'pkgconf,
                '"GFDL-1.2-only",
                'JSON,
                'HPND-sell-variant-MIT-disclaimer-rev,
                '"CAL-1.0-Combined-Work-Exception",
                '"OSET-PL-2.1",
                'CECILL-B,
                'Giftware,
                'SWL,
                '"YPL-1.1",
                '"LPPL-1.0",
                'BSD-Systemics-W3Works,
                '"Python-2.0",
                '"CC-BY-NC-SA-1.0",
                'HPND-sell-MIT-disclaimer-xserver,
                'Libpng,
                'Widget-Workshop,
                'CNRI-Python-GPL-Compatible,
                'PostgreSQL,
                'xzoom,
                'TermReadKey,
                'Abstyles,
                'TOSL,
                'GL2PS,
                '"bzip2-1.0.6",
                'HIDAPI,
                '"CDLA-Permissive-2.0",
                'ANTLR-PD-fallback,
                '"OLDAP-2.0.1",
                'Linux-man-pages-copyleft-2-para,
                '"DRL-1.1",
                '"SSPL-1.0",
                'Caldera-no-preamble,
                '"Apache-1.1",
                '"CC-BY-SA-3.0-IGO",
                '"GFDL-1.1-no-invariants-or-later",
                '"CC-BY-NC-SA-3.0-DE",
                'bcrypt-Solar-Designer,
                '"ZPL-2.0",
                '"OFL-1.0-RFN",
                'HPND-export2-US,
                'MTLL,
                '"UCL-1.0",
                '"OLDAP-2.7",
                '"CC-BY-SA-2.5",
                '"CC-BY-ND-3.0",
                '"ODbL-1.0",
                'OGTSL,
                'BSD-3-Clause-acpica,
                'App-s2p,
                'HPND-INRIA-IMAG,
                '"GFDL-1.1-only",
                'Minpack,
                'HPND-Netrek,
                'Pixar,
                'Boehm-GC-without-fee,
                'snprintf,
                '"TGPPL-1.0",
                'CC-PDDC,
                'BSD-2-Clause-Patent,
                '"MulanPSL-1.0",
                'CFITSIO,
                'MPEG-SSG,
                '"etalab-2.0",
                '"CC-BY-SA-1.0",
                'Naumen,
                'ISC,
                'HaskellReport,
                'Adobe-Utopia,
                '"ErlPL-1.1",
                'libtiff,
                'MITNFA,
                'curl,
                'NTP-0,
                'Linux-man-pages-copyleft,
                '"GPL-3.0-only",
                '"BitTorrent-1.1",
                'Brian-Gladman-2-Clause,
                'ImageMagick,
                '"Artistic-1.0",
                'FSFAP-no-warranty-disclaimer,
                'FSFUL,
                'Xerox,
                'TCL,
                'APAFML,
                'Unicode-TOU,
                'MIT-Modern-Variant,
                '"CC-BY-NC-SA-3.0",
                '"LGPL-3.0-only",
                '"Interbase-1.0",
                'BSD-2-Clause-Views,
                'Zlib,
                '"CC-PDM-1.0",
                'Mackerras-3-Clause-acknowledgment,
                'Furuseth,
                '"OFL-1.1-no-RFN",
                '"PolyForm-Noncommercial-1.0.0",
                '"SimPL-2.0",
                'UCAR,
                'Ruby-pty,
                'Symlinks,
                '"GFDL-1.3-invariants-only",
                '"OSL-1.0",
                'AML,
                'MIT-open-group,
                '"SGI-B-2.0",
                'MIPS,
                '"YPL-1.0",
                'OCCT-PL,
                'BSD-Protection,
                'BSD-3-Clause-No-Nuclear-License,
                '"OLDAP-2.6",
                '"AGPL-3.0-or-later",
                '"OLDAP-2.2.1",
                'Sun-PPP,
                'Boehm-GC,
                '"CDL-1.0",
                '"LPPL-1.1",
                '"LPL-1.0",
                '"NICTA-1.0",
                'PADL,
                '"CC-BY-SA-2.0",
                '"OGC-1.0",
                '"CC-BY-SA-3.0-AT",
                'python-ldap,
                'Bitstream-Charter,
                'AMDPLPA,
                '"GFDL-1.3-no-invariants-or-later",
                'HPND-sell-regexpr,
                'URT-RLE,
                '"EFL-2.0",
                '"CDLA-Permissive-1.0",
                '"LPPL-1.3a",
                '"SHL-0.51",
                '"CC-BY-2.5",
                'ICU,
                '"Artistic-2.0",
                'SCEA,
                'xlock,
                '"SGI-B-1.0",
                'Sun-PPP-2000,
                'Zed,
                'metamail,
                'BSD-3-Clause-Attribution,
                'Adobe-Glyph,
                'Intel-ACPI,
                '"OLDAP-1.4",
                '"NPOSL-3.0",
                'SMLNJ,
                'Knuth-CTAN,
                '"GFDL-1.3-invariants-or-later",
                'Mackerras-3-Clause,
                '"0BSD",
                'Borceux,
                '"TU-Berlin-2.0",
                '"TORQUE-1.1",
                '"SAX-PD-2.0",
                'BSD-3-Clause-Sun,
                'ulem,
                '"CC-BY-4.0",
                'IJG-short,
                '"NPL-1.1",
                '"3D-Slicer-1.0",
                'BSD-3-Clause-Modification,
                'BSD-Advertising-Acknowledgement,
                '"SPL-1.0",
                '"NASA-1.3",
                'SMAIL-GPL,
                '"LAL-1.2",
                'Glulxe,
                'mpi-permissive,
                '"OSL-1.1",
                'Linux-man-pages-copyleft-var,
                '"PSF-2.0",
                'NCSA,
                'NLPL,
                'generic-xts,
                'HPND-export-US-modify,
                '"EUPL-1.1",
                '"CC-BY-2.0",
                'Spencer-94,
                'NIST-Software,
                '"DL-DE-ZERO-2.0",
                'MIT-CMU,
                'Kastrup,
                'MIT-Wu,
                'HPND-UC,
                'BSD-3-Clause-No-Nuclear-Warranty,
                '"CC-BY-NC-4.0",
                'NIST-PD-fallback,
                'Intel,
                '"QPL-1.0-INRIA-2004",
                'DEC-3-Clause,
                '"CC-BY-2.5-AU",
                '"LGPL-2.0-only",
                'HPND-DEC,
                'Dotseqn,
                'HPND-MIT-disclaimer,
                'ANTLR-PD,
                'OML,
                '"GFDL-1.1-invariants-only",
                'xkeyboard-config-Zinoviev,
                '"Zimbra-1.3",
                'OpenSSL-standalone,
                '"GPL-3.0-or-later",
                '"Unicode-3.0",
                '"LZMA-SDK-9.22",
                'HPND-Markus-Kuhn,
                '"AGPL-1.0-or-later",
                'TPDL,
                'NRL,
                'HPND-doc,
                'VOSTROM,
                '"APSL-2.0",
                '"CC-BY-NC-SA-4.0",
                '"GFDL-1.2-or-later",
                'Qhull,
                'Baekmuk,
                '"OFL-1.1",
                'Spencer-99,
                'ssh-keyscan,
                'MS-PL,
                'Beerware,
                '"AFL-1.1",
                'Multics,
                'Xfig,
                'radvd,
                '"GPL-2.0-or-later",
                'OFFIS,
                '"CERN-OHL-P-2.0",
                'BSD-Source-beginning-file,
                '"CPOL-1.02",
                'Linux-man-pages-1-para,
                '"Apache-2.0",
                'IBM-pibs,
                'BSD-4-Clause,
                'xinetd,
                '"CC-BY-NC-1.0",
                'AMD-newlib,
                'check-cvs,
                'Jam,
                '"Xdebug-1.03",
                'HPND-Fenneberg-Livingston,
                '"libselinux-1.0",
                '"AGPL-1.0-only",
                'AdaCore-doc,
                '"CC-BY-3.0-NL",
                'ISC-Veillard,
                '"OGL-UK-2.0",
                'Wsuipa,
                '"EUPL-1.2",
                'Catharon,
                'TrustedQSL,
                'NCBI-PD,
                'Sendmail,
                'OpenSSL,
                'Clips,
                'Leptonica,
                '"libpng-2.0",
                'gnuplot,
                'BSD-4-Clause-Shortened,
                '"CC-BY-ND-3.0-DE",
                '"OGL-UK-3.0",
                'Zeeff,
                'Linux-OpenIB,
                'HPND,
                '"APSL-1.1",
                '"ASWF-Digital-Assets-1.0",
                '"EPL-2.0",
                '"OSL-2.0",
                '"GPL-1.0-or-later",
                'W3C-20150513,
                'MIT-Click,
                '"BSD-4.3RENO",
                'Mup,
                'MS-LPL,
                '"OLDAP-2.2",
                '"OSL-2.1",
                'Xnet,
                'Adobe-Display-PostScript,
                'Imlib2,
                'threeparttable,
                '"LAL-1.3",
                '"OFL-1.0-no-RFN",
                'gtkbook,
                'Brian-Gladman-3-Clause,
                '"OLDAP-2.4",
                '"CC-BY-NC-ND-2.5",
                '"GFDL-1.2-invariants-or-later",
                '"AFL-2.0",
                '"BSD-4.3TAHOE",
                '"LiLiQ-R-1.1",
                '"GPL-1.0-only",
                '"Inner-Net-2.0",
                '"OLFL-1.3",
                '"MPL-2.0-no-copyleft-exception",
                'SISSL,
                '"CERN-OHL-1.1",
                '"Apache-1.0",
                'BSD-3-Clause-HP,
                '"C-UDA-1.0",
                'Crossword,
                '"CECILL-1.1",
                '"UPL-1.0",
                'LPD-document,
                'MIT-Khronos-old,
                'SchemeReport,
                'Ferguson-Twofish,
                '"CC-BY-ND-1.0",
                'TTYP0,
                'Cronyx,
                '"Zend-2.0",
                'GD,
                '"CC-BY-NC-2.5",
                '"DRL-1.0",
                'Lucida-Bitmap-Fonts,
                '"GFDL-1.2-no-invariants-or-later",
                'Afmparse,
                '"MulanPSL-2.0",
                'SMPPL,
                '"Parity-7.0.0",
                'Caldera,
                '"Watcom-1.0",
                '"CC-SA-1.0",
                'ThirdEye,
                'Eurosym,
                '"BUSL-1.1",
                '"Sendmail-Open-Source-1.1",
                '"JasPer-2.0",
                '"gSOAP-1.3b",
                '"ZPL-1.1",
                '"LGPL-3.0-or-later",
                'Bahyph,
                '"GFDL-1.3-only",
                '"CC-BY-NC-SA-2.0-DE",
                'X11,
                '"copyleft-next-0.3.0",
                'X11-distribute-modifications-variant,
                '"CERN-OHL-S-2.0",
                'DocBook-Schema,
                'FTL,
                'NetCDF,
                '"copyleft-next-0.3.1",
                '"CPAL-1.0",
                'BSD-2-Clause-Darwin,
                'dvipdfm,
                'Saxpath,
                '"TU-Berlin-1.0",
                'SL,
                'FDK-AAC,
                '"CC-BY-ND-2.0",
                '"AFL-1.2",
                'MakeIndex,
                '"Python-2.0.1",
                '"LiLiQ-P-1.1",
                '"OLDAP-2.3",
                'CNRI-Python,
                'any-OSI-perl-modules,
                'MS-RL,
                '"CDDL-1.0",
                'swrule,
                '"Hippocratic-2.1",
                '"RPL-1.1",
                'HPND-Kevlin-Henney,
                'diffmark,
                'CECILL-C,
                '"CC-BY-3.0-US",
                '"Condor-1.1",
                '"LZMA-SDK-9.11-to-9.20",
                '"BSL-1.0",
                'BSD-2-Clause-first-lines,
                'CNRI-Jython,
                '"LPL-1.02",
                '"CERN-OHL-W-2.0",
                '"CC-BY-SA-2.0-UK",
                'pnmstitch,
                '"D-FSL-1.0",
                '"CC-BY-NC-SA-2.0-FR",
                '"APSL-1.0",
                '"APSL-1.2",
                '"OLDAP-2.0",
                'FreeImage,
                'lsof,
                'BSD-3-Clause,
                '"Zimbra-1.4",
                '"CC-BY-3.0-AU",
                'CMU-Mach-nodoc,
                'FreeBSD-DOC,
                'UnixCrypt,
                '"TAPR-OHL-1.0",
                '"TPL-1.0",
                'DocBook-Stylesheet,
                '"MPL-2.0",
                '"OPL-UK-3.0",
                '"OGDL-Taiwan-1.0",
                'MIT-advertising,
                'Fair,
                'Ruby,
                'BSD-3-Clause-LBNL,
                '"CC-BY-NC-ND-2.0",
                '"OPUBL-1.0",
                '"NBPL-1.0",
                '"CC-BY-NC-SA-3.0-IGO",
                '"VSL-1.0",
                'SunPro,
                'ClArtistic,
                'FBM,
                'WTFPL,
                '"APL-1.0",
                '"CC-BY-1.0",
                'HPND-sell-variant,
                '"Frameworx-1.0",
                'NTP,
                '"CC-BY-NC-3.0",
                'UMich-Merit,
                'MIT-feh,
                '"LiLiQ-Rplus-1.1",
                'DocBook-XML,
                'NAIST-2003,
                '"AFL-2.1",
                'libutil-David-Nugent,
                'magaz,
                'W3C,
                '"GFDL-1.1-no-invariants-only",
                'BSD-Source-Code,
                '"CC-BY-3.0-IGO",
                '"NCGL-UK-2.0",
                'IEC-Code-Components-EULA,
                'HP-1989,
                '"OLDAP-1.1",
                'Motosoto,
                'HPND-merchantability-variant,
                'W3C-19980720,
                '"Artistic-1.0-cl8",
                '"CC-BY-NC-3.0-DE",
                'Glide,
                'Entessa,
                '"EFL-1.0",
                '"GFDL-1.2-invariants-only",
                'FSFULLRWD,
                '"CDDL-1.1",
                'BSD-Inferno-Nettverk,
                'MIT-enna,
                'JPL-image,
                'Bitstream-Vera,
                '"COIL-1.0",
                '"ODC-By-1.0",
                '"BlueOak-1.0.0",
                '"CC-BY-NC-ND-1.0",
                'McPhee-slideshow,
                '"EUPL-1.0",
                'Martin-Birgmeier,
                'BSD-3-Clause-No-Nuclear-License-2014,
                '"CC-BY-NC-ND-4.0",
                '"Artistic-1.0-Perl",
                '"CC-BY-SA-3.0-DE",
                '"OLDAP-2.5",
                '"AGPL-3.0-only",
                '"OCLC-2.0",
                'RSA-MD,
                'DOC,
                'Cornell-Lossless-JPEG,
                '"CATOSL-1.1",
                '"ECL-2.0",
                '"GPL-2.0-only",
                '"OGL-UK-1.0",
                'SSH-short,
                '"QPL-1.0",
                '"LGPL-2.0-or-later",
                'MIT-Festival,
                'SAX-PD,
                'EPICS,
                'TMate,
                'Newsletr,
                '"GFDL-1.1-or-later",
                '"CDLA-Sharing-1.0",
                'BSD-Systemics,
                '"SHL-0.5",
                'X11-swapped,
                'HPND-export-US,
                'HP-1986,
                '"PolyForm-Small-Business-1.0.0",
                '"CECILL-2.1",
                '"GFDL-1.1-invariants-or-later",
                'NCL,
                '"CUA-OPL-1.0",
                'Unlicense,
                '"PDDL-1.0",
                '"CC-BY-NC-SA-2.5",
                'Gutmann,
                'XSkat,
                'MIT,
                '"CERN-OHL-1.2",
                '"GFDL-1.3-or-later",
                '"DL-DE-BY-2.0",
                '"OpenPBS-2.3",
                'hdparm,
                '"PHP-3.0",
                '"CAL-1.0",
                'AAL,
                'GCR-docs,
                'eGenix,
                'MIT-testregex,
                'LOOP,
                'Adobe-2006,
                '"CC-BY-3.0-AT",
                'iMatix,
                '"SugarCRM-1.1.3",
                'MIT-0,
                'TCP-wrappers,
                'Unicode-DFS-2015,
                'dtoa,
                'BSD-4-Clause-UC,
                'Arphic-1999,
                '"AFL-3.0",
                'Sleepycat,
                'EUDatagrid,
                'mpich2,
                'any-OSI,
                'FSFAP,
                'NGPL,
                'wwl,
                '"CECILL-2.0",
                '"NPL-1.0",
                '"CC0-1.0",
                '"ZPL-2.1",
                '"CC-BY-NC-ND-3.0-IGO",
                'BSD-3-Clause-Open-MPI,
                '"CC-BY-3.0",
                'TTWL,
                '"OLDAP-2.2.2",
                '"LPPL-1.2",
                'Cube,
                'BSD-3-Clause-No-Military-License,
                'BSD-1-Clause,
                'psfrag,
                'BSD-3-Clause-flex,
                '"OFL-1.0",
                '"LGPL-2.1-or-later",
                'softSurfer,
                '"CC-BY-ND-4.0",
                '"OLDAP-2.1",
                'Barr,
                'SNIA,
                '"CC-BY-3.0-DE",
                'HPND-UC-export-US,
                '"EPL-1.0",
                '"OFL-1.1-RFN",
                'PPL,
                'HPND-Intel,
                'mplus,
                '"O-UDA-1.0",
                'Latex2e,
                'w3m,
                'fwlw,
                'NOSL,
                'AMPAS,
                'HTMLTIDY,
                'OAR,
                'LGPLLR,
                'HPND-sell-variant-MIT-disclaimer,
                'Rdisc,
                'SGI-OpenGL,
                '"Ubuntu-font-1.0",
                'Kazlib,
                '"CC-BY-NC-SA-2.0-UK",
                'BSD-Attribution-HPND-disclaimer,
                'SSH-OpenSSH,
                'Aladdin,
                '"CECILL-1.0",
                'Soundex,
                'Noweb,
                '"CC-BY-SA-3.0",
                'mailprio,
                'BSD-2-Clause,
                '"NLOD-2.0",
                '"LGPL-2.1-only",
                '"OLDAP-1.3",
                '"CC-BY-NC-2.0",
                'HPND-export-US-acknowledgement,
                'Graphics-Gems,
                'MMIXware,
                'SSLeay-standalone,
                'FSFULLR,
                '"CC-BY-NC-ND-3.0",
                'psutils,
                'IPA,
                'Latex2e-translated-notice,
                '"XFree86-1.1",
                '"SGI-B-1.1",
                'ADSL,
                '"CC-BY-SA-4.0",
                '"OPL-1.0",
                '"GFDL-1.2-no-invariants-only",
                '"CPL-1.0",
                '"Elastic-2.0",
                'Plexus,
                '"ECL-1.0",
                'xpp,
                'CMU-Mach,
                '"Sendmail-8.23",
                '"OLDAP-1.2",
                '"MPL-1.0",
                'CrystalStacker,
                '"OSL-3.0",
                '"Community-Spec-1.0",
                'Vim,
                'AML-glslang,
                'BSD-3-Clause-Clear,
                '"MPL-1.1",
                'SGP4,
                'OpenVision,
                'JPNIC,
                'Spencer-86,
                '"IPL-1.0",
                'InnoSetup,
                '"CC-BY-SA-2.1-JP",
                '"Parity-6.0.0",
                'MirOS,
                'cve-tou,
                '"OLDAP-2.8",
                'checkmk,
                'zlib-acknowledgement,
                '"LPPL-1.3c",
                'Info-ZIP,
                'GLWTPL,
                '"ASWF-Digital-Assets-1.1",
                'RSCPL,
                '"GFDL-1.3-no-invariants-only",
                '"RHeCos-1.1",
                '"NLOD-1.0",
                '"CC-BY-NC-SA-2.0",
                'NIST-PD,
                'DSDP
              |]
            ],
      "definitions.multilingual" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "en|de|ru|pt|nl|fr|it|es|pl|uk|zh-cn",
              js2n.record.Required [ "en" ]
            ],
    }
    in
  {
      "$schema" | String | doc "JSON schema for validation" | optional,
      common
        | js2n.IfThenElse refs."definitions.isCompactTrue"
          refs."definitions.disallowNodeProcessParams" js2n.Always
        | {
          adminColumns
            | js2n.array.MinItems 1
            | Array
              {
                align
                  | std.enum.TagOrString
                  | [| 'justify, 'center, 'right, 'left |],
                edit | Bool | optional,
                name
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.multilingual", { _ | Dyn } ]
                    ],
                objTypes | Array String | optional,
                path | String,
                type | String | optional,
                width | js2n.number.Minimum 0,
                ..
              }
            | doc "Custom attributes, that must be shown in admin in the object browser. Like: [{\"name\": {\"en\": \"KNX address\"}, \"path\": \"native.address\", \"width\": 100, \"align\": \"left\"}, {\"name\": \"DPT\", \"path\": \"native.dpt\", \"width\": 100, \"align\": \"right\", \"type\": \"number\", \"edit\": true, \"objTypes\": [\"state\", \"channel\"]}]. type is a type of the attribute (e.g. string, number, boolean) and only needed if edit is enabled. objTypes is a list of the object types, that could have such attribute. Used only in edit mode too."
            | optional,
          adminTab
            | {
              fa-icon
                | String
                | doc "Font-Awesome icon name for TAB"
                | optional,
              ignoreConfigUpdate
                | Bool
                | doc "Do not update config TAB if configuration changed (to enable configure settings in TAB)"
                | optional,
              link
                | String
                | doc "Link for iframe or JSON config file in the TAB. You can use parameters replacement like this: \"https://%ip%:%port%\". IP will be replaced with host IP. \"port\" will be extracted from native.port."
                | optional,
              name
                | refs."definitions.multilingual"
                | { _ | Dyn }
                | doc "Name of TAB (multilingual object) in admin"
                | optional,
              singleton
                | Bool
                | doc "If true, only one TAB for all instances will be shown."
                | optional,
            }
            | doc "Adds a Tab which can be shown in admin adapter"
            | optional,
          adminUI
            | {
              config
                | std.enum.TagOrString
                | [| 'none, 'materialize, 'json, 'html |]
                | doc "UI type of config page inside admin UI",
              custom
                | std.contract.Equal "json"
                | doc "UI type of custom tab inside admin UI"
                | optional,
              tab
                | std.enum.TagOrString
                | [| 'materialize, 'html |]
                | doc "UI type of tab inside admin UI"
                | optional,
            }
            | doc "Type of the admin UI"
            | optional,
          allowInit
            | Bool
            | doc "allow for \"scheduled\" adapter to be called \"not in the time schedule\", if settings changed or adapter started. Or allow scheduled adapter start once after configuration changed and then by schedule."
            | optional,
          authors
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [ String, { email | String | optional, name | String, } ]
            )
            | doc "Array of authors as string"
            | optional,
          automaticUpgrade
            | std.enum.TagOrString
            | [| 'major, 'minor, 'patch, 'none |]
            | doc "Automatically upgrade the adapter in the configured semver range. Best practice is to leave this as none and let the user opt-in."
            | optional,
          availableModes
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'extension, 'once, 'schedule, 'daemon, 'none |]
                ]
            )
            | doc "values for common.mode if more than one mode is possible"
            | optional,
          blockedVersions
            | Array String
            | doc "Array which lists all blocked versions. Blocked versions will not be started. Use semver notation to specify the version ranges. The information is always used from the io-package.json in the GitHub repository."
            | optional,
          blockly
            | Bool
            | doc "if adapter has custom blocks for blockly (admin/blockly.js required)"
            | optional,
          compact | Bool | doc "If compact mode supported" | optional,
          connectionType
            | std.enum.TagOrString
            | [| 'cloud, 'local, 'none |]
            | doc "Type of connection to device"
            | optional,
          controller | Bool | doc "Only used by js-controller" | optional,
          dataFolder
            | String
            | doc "Folder relative to iobroker-data where the adapter stores the data. This folder will be backed up and restored automatically. You can use variable '%INSTANCE%' in it"
            | optional,
          dataSource
            | std.enum.TagOrString
            | [| 'assumption, 'push, 'poll, 'none |]
            | doc "How the data will be received from device"
            | optional,
          dependencies
            | Array (std.contract.any_of [ String, { _ | Dyn } ])
            | doc "Array like [{\"js-controller\": \">=2.0.0\"}] that describes which ioBroker modules are required for this adapter on the same host"
            | optional,
          desc
            | refs."definitions.multilingual"
            | { _ | Dyn }
            | doc "Description, object for multilingual description",
          docs
            | {
              _ | std.contract.any_of
                [
                  String,
                  std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
                ]
            }
            | js2n.record.FieldsMatch "en|de|ru|pt|nl|fr|it|es|pl|uk|zh-cn"
            | js2n.record.Required [ "en" ]
            | doc "The structure like {\"en\": \"docs/en/README.md\", \"de\": [\"docs/de/README.md\", \"docs/de/README1.md\"]} that describes the documentation if not in README.md"
            | optional,
          enabled
            | Bool
            | doc "Value should be false so new instances are disabled by default"
            | optional,
          eraseOnUpload
            | Bool
            | doc "erase all previous data in the directory before upload"
            | optional,
          extIcon
            | String
            | doc "Link to external icon for uninstalled adapters. Normally on GitHub"
            | optional,
          getHistory
            | Bool
            | doc "if adapter supports getHistory message. (Up from controller v5, please use `common.supportedMessages.getHistory`)"
            | optional,
          globalDependencies
            | Array (std.contract.any_of [ String, { _ | Dyn } ])
            | doc "Array like [{\"admin\": \">=2.0.0\"}] that describes which ioBroker modules are required for this adapter on one of the hosts"
            | optional,
          icon
            | String
            | doc "name of the local icon (should be located in subdirectory \"admin\")"
            | optional,
          ifInstalledDependencies
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".+" = String, },
                properties = {},
                required = {},
              }
            | doc "Object like {\"admin\": \">=2.0.0\", \"javascript\": \">=3.0.0\"} that describes which versions of ioBroker modules are required for this adapter on one of the hosts, but only if this adapter is installed"
            | optional,
          install
            | Bool
            | doc "The adapter will be executed once additionally after installation and the `install` event will be emitted during this run. This allows for executing one time installation code."
            | optional,
          javascriptRules
            | {
              i18n
                | std.contract.any_of
                  [
                    std.contract.Equal true,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              ".+" =
                                std.contract.Sequence
                                    [
                                      refs."definitions.multilingual",
                                      { _ | Dyn }
                                    ],
                            },
                        properties = {},
                        required = {},
                      }
                  ]
                | doc "Translation for the rule block"
                | optional,
              name | String | doc "Name of the module, like 'ActionTelegram'",
              type
                | std.enum.TagOrString
                | [| 'module |]
                | doc "Define type='module' if rules written with TypeScript"
                | optional,
              url
                | String
                | doc "Link to module, like 'rules/customRuleBlocks.js'. That means it will loaded from admin/rules directory of the adapter",
            }
            | optional,
          keywords
            | Array String
            | doc "Similar to keywords in package.json, but can be defined in many languages."
            | optional,
          license
            | refs."definitions.license"
            | doc "DEPRECATED: Use 'common.licenseInformation' instead, move the current 'common.license' attribute to package.json instead!"
            | optional,
          licenseInformation
            | js2n.IfThenElse
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
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'limited, 'commercial, 'paid |]
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
                  js2n.record.Required [ "link" ],
                  Array Dyn
                ]) js2n.Always
            | {
              license | refs."definitions.license" | optional,
              link
                | js2n.string.Matches "^https://.+$"
                | doc "Hyperlink, where information about the license can be found. For non-free licenses the linked page should contain information about free features (if applicable), time of validity, link to shop and seller information. This is required if the license type is different from 'free'. For 'free' licenses an optional link to the license file can be placed here."
                | optional,
              type
                | std.enum.TagOrString
                | [| 'limited, 'commercial, 'paid, 'free |]
                | doc "Use 'paid' for adapters which do not work without a paid license. Use 'commercial' for adapters which require a license for commercial use only. Use 'limited' if some functionalities are not available without a paid license.",
            },
          localLinks
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".+" =
                        std.contract.any_of
                            [
                              String,
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        cloud = String,
                                        color = String,
                                        description =
                                          std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ],
                                        icon = String,
                                        intro = Bool,
                                        link = String,
                                        name =
                                          std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ]
                                              ],
                                        order = Number,
                                        pro =
                                          std.contract.any_of [ Bool, String ],
                                      },
                                  required = { link = true, },
                                },
                              Array Dyn
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "Link to the web service of this adapter. E.g {\"_default\": \"http://localhost:5984/_utils\"} for button in admin"
            | optional,
          logTransporter
            | Bool
            | doc "If this adapter receives logs from other hosts and adapters (e.g. to store them somewhere)"
            | optional,
          loglevel
            | std.enum.TagOrString
            | [| 'error, 'warn, 'info, 'debug, 'silly |]
            | doc "Default Loglevel after instance creation"
            | optional,
          main
            | String
            | doc "Name of the start file. DEPRECATED: For controller >= 3.3 please use package.json main."
            | optional,
          materialize
            | Bool
            | doc "If adapter supports > admin3 (materialize style) DEPRECATED: For admin version >= 5 please use the property 'adminUI'"
            | optional,
          materializeTab
            | Bool
            | doc "If adapter supports > admin3 for tab (materialize style) DEPRECATED: For admin version >= 5 please use the property 'adminUI'"
            | optional,
          messagebox
            | Bool
            | doc "true if messagebox supported. Hence, the adapter can receive sendTo messages. Up from controller v5, please use common.supportedMessages.custom = true"
            | optional,
          messages
            | Array
              {
                buttons
                  | Array (
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'cancel, 'agree, 'ok |] ]
                  )
                  | doc "Predefined buttons of the message window",
                condition
                  | {
                    operand
                      | std.enum.TagOrString
                      | [| 'and, 'or |]
                      | doc "Operand to connect multiple rules"
                      | optional,
                    rules
                      | Array String
                      | doc "Rules which need to be true, e.g. [\"oldVersion<2.0.0\", \"newVersion>=2.0.0\"]"
                      | optional,
                  }
                  | doc "Message will only be shown if condition matches"
                  | optional,
                level
                  | std.enum.TagOrString
                  | [| 'error, 'warn, 'info |]
                  | doc "The importance of the message"
                  | optional,
                link
                  | String
                  | doc "You can define a hyperlink, which will be shown, define its text with `linkText`"
                  | optional,
                linkText
                  | refs."definitions.multilingual"
                  | { _ | Dyn }
                  | doc "If a link is defined and should be embedded in text, you can define the text here"
                  | optional,
                text
                  | refs."definitions.multilingual"
                  | { _ | Dyn }
                  | doc "Text of the shown message",
                title
                  | refs."definitions.multilingual"
                  | { _ | Dyn }
                  | doc "Title of the shown message",
              }
            | doc "Messages can be shown on adapter installation, update and instance creation"
            | optional,
          mode
            | std.enum.TagOrString
            | [| 'extension, 'once, 'schedule, 'daemon, 'none |]
            | doc "Execution mode of the adapter",
          name
            | js2n.string.Matches
              "^(?![i|I][o|O][b|B][r|R][o|O][k|K][e|E][r|R])"
            | doc "Name of the adapter without ioBroker",
          news
            | js2n.record.MaxProperties 20
            | js2n.record.MinProperties 1
            | {
              _ | std.contract.Sequence
                [ refs."definitions.multilingual", { _ | Dyn } ]
            }
            | js2n.record.FieldsMatch
              "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "Short form of changelog in all supported languages",
          noConfig
            | Bool
            | doc "Do not show configuration dialog for instance DEPRECATED: For admin version >= 5 please use adminUI.config = \"none\""
            | optional,
          noIntro
            | Bool
            | doc "never show instances of this adapter on Intro/Overview screen in admin (like icons, widgets)"
            | optional,
          noRepository
            | Bool
            | doc "If adapter delivered with initial installation or has own repository"
            | optional,
          nodeProcessParams | Array String | optional,
          nogit
            | Bool
            | doc "If true, no install from github directly is possible"
            | optional,
          nondeletable
            | Bool
            | doc "This adapter cannot be deleted or updated. It will be updated together with controller."
            | optional,
          onlyWWW
            | Bool
            | doc "Say to controller, that adapter has only html files and no main.js, like rickshaw"
            | optional,
          os
            | std.contract.any_of
              [
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'win32, 'darwin, 'linux |] ],
                std.contract.Sequence
                  [
                    js2n.array.MinItems 1,
                    Array (
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'win32, 'darwin, 'linux |] ]
                    )
                  ]
              ]
            | doc "String or array of supported operation systems, e.g [\"linux\", \"darwin\"]"
            | optional,
          osDependencies
            | { _ | Array String }
            | js2n.record.FieldsMatch "linux|darwin|win32"
            | doc "OS packages which should be installed on adapter installation"
            | optional,
          platform
            | std.enum.TagOrString
            | [| '"Javascript/Node.js" |]
            | doc "Platform, normally Javascript/Node.js",
          plugins | { _ | Dyn } | doc "ioBroker plugins to be used" | optional,
          preserveSettings
            | std.contract.any_of [ String, Array String ]
            | doc "String (or array) with names of attributes in common of instance, which will not be deleted. E.g. \"history\", so by setState('system.adapter.mqtt.0\", {..}) the field common.history will not be deleted even if new object does not have this field. To delete the attribute it must be explicitly done with common:{history: null}."
            | optional,
          readme | String | doc "Url of the ReadMe file" | optional,
          restartAdapters
            | Array String
            | doc "Array with names of adapter that must be restarted after this adapter is installed, e.g. [\"vis\"]"
            | optional,
          restartSchedule
            | String
            | doc "CRON schedule to restart mode daemon adapters"
            | optional,
          schedule
            | String
            | doc "CRON schedule if adapter runs in mode schedule"
            | optional,
          serviceStates
            | std.contract.any_of [ Bool, String ]
            | doc "If adapter can deliver additional states. If true, the path adapter/lib/states.js (or given path as string) will be called and it give following parameters function (objects, states, instance, config, callback). The function must deliver the array of points with values like function (err, result) { result = [{id: 'id1', val: 1}, {id: 'id2', val: 2}]}"
            | optional,
          singleton
            | Bool
            | doc "Adapter can be installed only once in whole system"
            | optional,
          singletonHost
            | Bool
            | doc "Adapter can be installed only once on one host"
            | optional,
          stopBeforeUpdate
            | Bool
            | doc "If adapter must be stopped before update"
            | optional,
          stopTimeout
            | js2n.number.MultipleOf 1
            | js2n.number.Minimum 0
            | doc "timeout in ms to wait, till adapter shut down"
            | optional,
          subscribable
            | Bool
            | doc "Variables of this adapter must be subscribed with sendTo to enable updates"
            | optional,
          supportCustoms
            | Bool
            | doc "If the adapter supports settings for every state. It requires file jsonCustom.json in admin and \"common.adminUI\":{\"custom\":\"json\"}. Sample can be found in ioBroker.history"
            | optional,
          supportStopInstance
            | std.contract.any_of
              [
                Bool,
                std.contract.Sequence
                  [ js2n.number.MultipleOf 1, js2n.number.Minimum 1000 ]
              ]
            | doc "If adapter supports signal stopInstance (messagebox required). Use number if you need more than 1000 ms for stop routine. The signal will be sent before stop to the adapter. (used if problems occurred with SIGTERM). (Up from controller v5, please use `common.supportedMessages.stopInstance`)"
            | optional,
          supportedMessages
            | {
              custom
                | Bool
                | doc "If custom messages are supported (same as legacy messagebox)"
                | optional,
              deviceManager
                | Bool
                | doc "If adapter supports the device manager and thus responds to the corresponding messages"
                | optional,
              getHistory
                | Bool
                | doc "If adapter supports getHistory message. (Same as legacy `getHistory`, to avoid problems, set both flags in parallel for now)"
                | optional,
              notifications
                | Bool
                | doc "If notification handling is supported, for information, see https://github.com/foxriver76/ioBroker.notification-manager#requirements-for-messaging-adapters"
                | optional,
              stopInstance
                | std.contract.any_of
                  [
                    Bool,
                    std.contract.Sequence
                      [ js2n.number.MultipleOf 1, js2n.number.Minimum 1000 ]
                  ]
                | doc "If adapter supports signal stopInstance. Use number if you need more than 1000 ms for stop routine. The signal will be sent before stop to the adapter. (used if problems occurred with SIGTERM). (Same as legacy `supportStopInstance`)"
                | optional,
            }
            | doc "Object which defines, if the adapter supports receiving messages via sendTo. Additionally, it defines if specific messages are supported."
            | optional,
          tier
            | js2n.number.Maximum 3
            | js2n.number.Minimum 1
            | doc "Lower tiers are started before higher tiers instances, TIER 1: LOGIC, TIER 2: APIs & other data, TIER 3: not fastly needed data, like BackItUp, Visualization, etc.",
          title
            | String
            | doc "Longer name of adapter DEPRECATED: For admin version >= 5 this property is no longer required"
            | optional,
          titleLang
            | refs."definitions.multilingual"
            | { _ | Dyn }
            | doc "Longer name of adapter in all supported languages like {en: 'Adapter', de: 'adapter', ru: 'Драйвер'}",
          type
            | std.enum.TagOrString
            | [|
              'weather,
              'visualization-widgets,
              'visualization-icons,
              'visualization,
              'vehicle,
              'utility,
              'storage,
              'protocols,
              'network,
              'multimedia,
              'misc-data,
              'metering,
              'messaging,
              'logic,
              'lighting,
              'iot-systems,
              'infrastructure,
              'household,
              'health,
              'hardware,
              'geoposition,
              'general,
              'garden,
              'energy,
              'date-and-time,
              'communication,
              'climate-control,
              'alarm
            |]
            | doc "Type of the adapter"
            | optional,
          unsafePerm
            | Bool
            | doc "if the package must be installed with \"npm --unsafe-perm\" parameter"
            | optional,
          version
            | js2n.string.Matches
              "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "Current adapter version",
          visWidgets
            | js2n.record.MinProperties 1
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".+" =
                        {
                            bundlerType
                              | std.enum.TagOrString
                              | [| 'module |]
                              | doc "Bundler type of the widget set. Currently only 'module' is supported, if the widget was written with TypeScript. If the widget was written with JavaScript, let it empty."
                              | optional,
                            components
                              | js2n.array.MinItems 1
                              | Array String
                              | doc "Names of widgets which have to be shown, normally equal to the content of 'modulefederation.config.js'",
                            i18n
                              | std.contract.any_of
                                [
                                  std.contract.Equal true,
                                  std.contract.Equal "component",
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns =
                                        {
                                            ".+" =
                                              std.contract.Sequence
                                                  [
                                                    refs."definitions.multilingual",
                                                    { _ | Dyn }
                                                  ],
                                          },
                                      properties = {},
                                      required = {},
                                    }
                                ]
                              | doc "Translation for the widget",
                            ignoreInVersions
                              | Array (js2n.number.MultipleOf 1)
                              | doc "The vis widget does not support the listed major versions of vis"
                              | optional,
                            url
                              | String
                              | doc "Relative path ('http://ip:port/vis/widgets/' + url) or full url to load component from",
                            ..
                          },
                    },
                properties = {},
                required = {},
              }
            | doc "Overview of vis 2 widgets provided by the adapter, define the name of the provided sets as keys"
            | optional,
          webByVersion
            | Bool
            | doc "Show version as prefix in web adapter (usually - ip:port/material, webByVersion - ip:port/1.2.3/material)"
            | optional,
          webExtendable
            | Bool
            | doc "If web server in this adapter can be extended with plugin/extensions like proxy, simple-api"
            | optional,
          webExtension
            | String
            | doc "Relative filename to connect the web extension. E.g. in simple-api \"lib/simpleapi.js\" relative to the adapter root directory. Additionally is native.webInstance required to say where this extension will be included. Empty means, it must run as own web service. \"*\" means every web server must include it."
            | optional,
          webPreSettings
            | { _ | Dyn }
            | doc "Object of parameters that must be included into info.js by webServer adapter. (Example material)"
            | optional,
          webservers
            | Array String
            | doc "Array of web server's instances that should serve content from the adapters www folder"
            | optional,
          welcomeScreen
            | Array (std.contract.any_of [ String, { _ | Dyn } ])
            | doc "DEPRECATED: Please use common.localLinks instead. Array of pages, that should be shown on the \"web\" index.html page. [\"vis/edit.html\", \"vis/index.html\"] or [{\"link\": \"vis/edit.html\", \"name\": \"Vis editor\", \"img\": \"vis/img/edit.png\", \"color\": \"blue\"}, \"vis/index.html\"]"
            | optional,
          welcomeScreenPro
            | Array (std.contract.any_of [ String, { _ | Dyn } ])
            | doc "DEPRECATED: Please use common.localLinks instead. Array of pages used on access via ioBroker cloud, that should be shown on the \"web\" index.html page. [\"vis/edit.html\", \"vis/index.html\"] or [{\"link\": \"vis/edit.html\", \"name\": \"Vis editor\", \"img\": \"vis/img/edit.png\", \"color\": \"blue\"}, \"vis/index.html\"]"
            | optional,
          wwwDontUpload
            | Bool
            | doc "Do not upload the www directory into DB. Used only for admin."
            | optional,
        }
        | doc "Contains all common instance attributes",
      encryptedNative
        | Array String
        | doc "Array of config attributes which will be automatically encrypted when stored via Admin configuration page and automatically decrypted at adapter runtime, e.g. [\"password\", \"token\"]"
        | optional,
      instanceObjects
        | Array refs."definitions.iobrokerObject"
        | doc "Objects which will be created for each instance"
        | optional,
      native
        | { _ | Dyn }
        | doc "Predefined attributes which are accessible in index_m.html and at runtime via adapter.config.<attribute>, e.g. {\"port\": 1234, \"password\": \"secret\"}"
        | optional,
      notifications
        | Array
          {
            categories
              | Array
                {
                  category | String,
                  description | refs."definitions.multilingual" | { _ | Dyn },
                  limit
                    | Number
                    | doc "Maximum amount of notifications to collect of this type",
                  name | refs."definitions.multilingual" | { _ | Dyn },
                  regex | Array String,
                  severity
                    | std.enum.TagOrString
                    | [| 'alert, 'notify, 'info |]
                    | doc "`info` will only be shown by admin, while `notify` might also be used by messaging adapters, `alert` ensures both",
                },
            description
              | refs."definitions.multilingual"
              | { _ | Dyn }
              | doc "Description which will be shown to the user",
            name
              | refs."definitions.multilingual"
              | { _ | Dyn }
              | doc "Name which will be shown to the user",
            scope | String,
          }
        | doc "Register notifications for the built-in notification system"
        | optional,
      objects
        | Array refs."definitions.iobrokerObject"
        | doc "Objects which will be created for the adapter"
        | optional,
      protectedNative
        | Array String
        | doc "Array of config attributes which will only be accessible by the own adapter, e.g. [\"password\"]"
        | optional,
    }