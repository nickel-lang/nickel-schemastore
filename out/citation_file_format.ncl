# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.address" = js2n.string.MinLength 1,
      "definitions.alias" = js2n.string.MinLength 1,
      "definitions.city" = js2n.string.MinLength 1,
      "definitions.commit" = js2n.string.MinLength 1,
      "definitions.country" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ZW,
                'ZM,
                'ZA,
                'YT,
                'YE,
                'WS,
                'WF,
                'VU,
                'VN,
                'VI,
                'VG,
                'VE,
                'VC,
                'VA,
                'UZ,
                'UY,
                'US,
                'UM,
                'UG,
                'UA,
                'TZ,
                'TW,
                'TV,
                'TT,
                'TR,
                'TO,
                'TN,
                'TM,
                'TL,
                'TK,
                'TJ,
                'TH,
                'TG,
                'TF,
                'TD,
                'TC,
                'SZ,
                'SY,
                'SX,
                'SV,
                'ST,
                'SS,
                'SR,
                'SO,
                'SN,
                'SM,
                'SL,
                'SK,
                'SJ,
                'SI,
                'SH,
                'SG,
                'SE,
                'SD,
                'SC,
                'SB,
                'SA,
                'RW,
                'RU,
                'RS,
                'RO,
                'RE,
                'QA,
                'PY,
                'PW,
                'PT,
                'PS,
                'PR,
                'PN,
                'PM,
                'PL,
                'PK,
                'PH,
                'PG,
                'PF,
                'PE,
                'PA,
                'OM,
                'NZ,
                'NU,
                'NR,
                'NP,
                'NO,
                'NL,
                'NI,
                'NG,
                'NF,
                'NE,
                'NC,
                'NA,
                'MZ,
                'MY,
                'MX,
                'MW,
                'MV,
                'MU,
                'MT,
                'MS,
                'MR,
                'MQ,
                'MP,
                'MO,
                'MN,
                'MM,
                'ML,
                'MK,
                'MH,
                'MG,
                'MF,
                'ME,
                'MD,
                'MC,
                'MA,
                'LY,
                'LV,
                'LU,
                'LT,
                'LS,
                'LR,
                'LK,
                'LI,
                'LC,
                'LB,
                'LA,
                'KZ,
                'KY,
                'KW,
                'KR,
                'KP,
                'KN,
                'KM,
                'KI,
                'KH,
                'KG,
                'KE,
                'JP,
                'JO,
                'JM,
                'JE,
                'IT,
                'IS,
                'IR,
                'IQ,
                'IO,
                'IN,
                'IM,
                'IL,
                'IE,
                'ID,
                'HU,
                'HT,
                'HR,
                'HN,
                'HM,
                'HK,
                'GY,
                'GW,
                'GU,
                'GT,
                'GS,
                'GR,
                'GQ,
                'GP,
                'GN,
                'GM,
                'GL,
                'GI,
                'GH,
                'GG,
                'GF,
                'GE,
                'GD,
                'GB,
                'GA,
                'FR,
                'FO,
                'FM,
                'FK,
                'FJ,
                'FI,
                'ET,
                'ES,
                'ER,
                'EH,
                'EG,
                'EE,
                'EC,
                'DZ,
                'DO,
                'DM,
                'DK,
                'DJ,
                'DE,
                'CZ,
                'CY,
                'CX,
                'CW,
                'CV,
                'CU,
                'CR,
                'CO,
                'CN,
                'CM,
                'CL,
                'CK,
                'CI,
                'CH,
                'CG,
                'CF,
                'CD,
                'CC,
                'CA,
                'BZ,
                'BY,
                'BW,
                'BV,
                'BT,
                'BS,
                'BR,
                'BQ,
                'BO,
                'BN,
                'BM,
                'BL,
                'BJ,
                'BI,
                'BH,
                'BG,
                'BF,
                'BE,
                'BD,
                'BB,
                'BA,
                'AZ,
                'AX,
                'AW,
                'AU,
                'AT,
                'AS,
                'AR,
                'AQ,
                'AO,
                'AM,
                'AL,
                'AI,
                'AG,
                'AF,
                'AE,
                'AD
              |]
            ],
      "definitions.date" =
        js2n.string.Matches
            "^[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$",
      "definitions.doi" =
        js2n.string.Matches
            "^10\\.\\d{4,9}(\\.\\d+)?/[A-Za-z0-9:/_;\\-\\.\\(\\)\\[\\]\\\\]+$",
      "definitions.email" = js2n.string.Matches "^[\\S]+@[\\S]+\\.[\\S]{2,}$",
      "definitions.entity" =
        {
            address
              | refs."definitions.address"
              | String
              | doc "The entity's address."
              | optional,
            alias
              | refs."definitions.alias"
              | String
              | doc "The entity's alias."
              | optional,
            city
              | refs."definitions.city"
              | String
              | doc "The entity's city."
              | optional,
            country
              | refs."definitions.country"
              | String
              | doc "The entity's country."
              | optional,
            date-end
              | refs."definitions.date"
              | String
              | doc "The entity's ending date, e.g., when the entity is a conference."
              | optional,
            date-start
              | refs."definitions.date"
              | String
              | doc "The entity's starting date, e.g., when the entity is a conference."
              | optional,
            email
              | refs."definitions.email"
              | String
              | doc "The entity's email address."
              | optional,
            fax
              | refs."definitions.fax"
              | String
              | doc "The entity's fax number."
              | optional,
            location
              | js2n.string.MinLength 1
              | doc "The entity's location, e.g., when the entity is a conference."
              | optional,
            name | js2n.string.MinLength 1 | doc "The entity's name.",
            orcid
              | refs."definitions.orcid"
              | String
              | doc "The entity's orcid."
              | optional,
            post-code
              | refs."definitions.post-code"
              | std.contract.any_of [ Number, String ]
              | doc "The entity's post code."
              | optional,
            region
              | refs."definitions.region"
              | String
              | doc "The entity's region."
              | optional,
            tel
              | refs."definitions.tel"
              | String
              | doc "The entity's telephone number."
              | optional,
            website
              | refs."definitions.url"
              | String
              | doc "The entity's website."
              | optional,
          },
      "definitions.fax" = js2n.string.MinLength 1,
      "definitions.identifier" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.identifier-description",
                                String
                              ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'doi |] ],
                        value =
                          std.contract.Sequence
                              [ refs."definitions.doi", String ],
                      },
                  required = { type = true, value = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.identifier-description",
                                String
                              ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'url |] ],
                        value =
                          std.contract.Sequence
                              [ refs."definitions.url", String ],
                      },
                  required = { type = true, value = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.identifier-description",
                                String
                              ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'swh |] ],
                        value =
                          std.contract.Sequence
                              [ refs."definitions.swh-identifier", String ],
                      },
                  required = { type = true, value = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        description =
                          std.contract.Sequence
                              [
                                refs."definitions.identifier-description",
                                String
                              ],
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'other |] ],
                        value = js2n.string.MinLength 1,
                      },
                  required = { type = true, value = true, },
                }
            ],
      "definitions.identifier-description" = js2n.string.MinLength 1,
      "definitions.license" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.license-enum", String ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.license-enum", String ]
                  )
                ]
            ],
      "definitions.license-enum" =
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
                'Zed,
                '"YPL-1.1",
                '"YPL-1.0",
                'XSkat,
                'xpp,
                'Xnet,
                'xinetd,
                '"XFree86-1.1",
                'Xerox,
                'X11,
                'wxWindows,
                'WTFPL,
                'Wsuipa,
                '"Watcom-1.0",
                'W3C-20150513,
                'W3C-19980720,
                'W3C,
                '"VSL-1.0",
                'VOSTROM,
                'Vim,
                '"UPL-1.0",
                'Unlicense,
                'Unicode-TOU,
                'Unicode-DFS-2016,
                'Unicode-DFS-2015,
                '"UCL-1.0",
                '"TU-Berlin-2.0",
                '"TU-Berlin-1.0",
                'TOSL,
                '"TORQUE-1.1",
                'TMate,
                'TCP-wrappers,
                'TCL,
                '"TAPR-OHL-1.0",
                'SWL,
                '"SugarCRM-1.1.3",
                'StandardML-NJ,
                '"SSPL-1.0",
                'SSH-short,
                'SSH-OpenSSH,
                '"SPL-1.0",
                'Spencer-99,
                'Spencer-94,
                'Spencer-86,
                'SNIA,
                'SMPPL,
                'SMLNJ,
                'Sleepycat,
                '"SISSL-1.2",
                'SISSL,
                '"SimPL-2.0",
                '"SHL-0.51",
                '"SHL-0.5",
                '"SGI-B-2.0",
                '"SGI-B-1.1",
                '"SGI-B-1.0",
                '"Sendmail-8.23",
                'Sendmail,
                'SCEA,
                'Saxpath,
                'SAX-PD,
                'Ruby,
                'RSCPL,
                'RSA-MD,
                '"RPSL-1.0",
                '"RPL-1.5",
                '"RPL-1.1",
                '"RHeCos-1.1",
                'Rdisc,
                '"QPL-1.0",
                'Qhull,
                '"Python-2.0",
                'psutils,
                'psfrag,
                '"PSF-2.0",
                'PostgreSQL,
                '"PolyForm-Small-Business-1.0.0",
                '"PolyForm-Noncommercial-1.0.0",
                'Plexus,
                '"PHP-3.01",
                '"PHP-3.0",
                '"PDDL-1.0",
                '"Parity-7.0.0",
                '"Parity-6.0.0",
                '"OSL-3.0",
                '"OSL-2.1",
                '"OSL-2.0",
                '"OSL-1.1",
                '"OSL-1.0",
                '"OSET-PL-2.1",
                '"OPL-1.0",
                'OpenSSL,
                'OML,
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
                '"ODC-By-1.0",
                '"ODbL-1.0",
                '"OCLC-2.0",
                'OCCT-PL,
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
                '"NLOD-1.0",
                'NIST-PD-fallback,
                'NIST-PD,
                'NGPL,
                'Newsletr,
                'NetCDF,
                'Net-SNMP,
                'NCSA,
                '"NCGL-UK-2.0",
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
                '"MPL-2.0-no-copyleft-exception",
                '"MPL-2.0",
                '"MPL-1.1",
                '"MPL-1.0",
                'mpich2,
                'Motosoto,
                'MITNFA,
                'MIT-open-group,
                'MIT-Modern-Variant,
                'MIT-feh,
                'MIT-enna,
                'MIT-CMU,
                'MIT-advertising,
                'MIT-0,
                'MIT,
                'MirOS,
                'MakeIndex,
                '"LPPL-1.3c",
                '"LPPL-1.3a",
                '"LPPL-1.2",
                '"LPPL-1.1",
                '"LPPL-1.0",
                '"LPL-1.02",
                '"LPL-1.0",
                'Linux-OpenIB,
                '"LiLiQ-Rplus-1.1",
                '"LiLiQ-R-1.1",
                '"LiLiQ-P-1.1",
                'libtiff,
                '"libselinux-1.0",
                '"libpng-2.0",
                'Libpng,
                'LGPLLR,
                '"LGPL-3.0+",
                '"LGPL-3.0-or-later",
                '"LGPL-3.0-only",
                '"LGPL-3.0",
                '"LGPL-2.1+",
                '"LGPL-2.1-or-later",
                '"LGPL-2.1-only",
                '"LGPL-2.1",
                '"LGPL-2.0+",
                '"LGPL-2.0-or-later",
                '"LGPL-2.0-only",
                '"LGPL-2.0",
                'Leptonica,
                'Latex2e,
                '"LAL-1.3",
                '"LAL-1.2",
                'JSON,
                'JPNIC,
                '"JasPer-2.0",
                'ISC,
                '"IPL-1.0",
                'IPA,
                '"Interbase-1.0",
                'Intel-ACPI,
                'Intel,
                'Info-ZIP,
                'Imlib2,
                'iMatix,
                'ImageMagick,
                'IJG,
                'ICU,
                'IBM-pibs,
                'HTMLTIDY,
                'HPND-sell-variant,
                'HPND,
                '"Hippocratic-2.1",
                'HaskellReport,
                '"gSOAP-1.3b",
                '"GPL-3.0+",
                '"GPL-3.0-with-GCC-exception",
                '"GPL-3.0-with-autoconf-exception",
                '"GPL-3.0-or-later",
                '"GPL-3.0-only",
                '"GPL-3.0",
                '"GPL-2.0+",
                '"GPL-2.0-with-GCC-exception",
                '"GPL-2.0-with-font-exception",
                '"GPL-2.0-with-classpath-exception",
                '"GPL-2.0-with-bison-exception",
                '"GPL-2.0-with-autoconf-exception",
                '"GPL-2.0-or-later",
                '"GPL-2.0-only",
                '"GPL-2.0",
                '"GPL-1.0+",
                '"GPL-1.0-or-later",
                '"GPL-1.0-only",
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
                'GD,
                'FTL,
                'FSFULLR,
                'FSFUL,
                'FSFAP,
                'FreeImage,
                'FreeBSD-DOC,
                '"Frameworx-1.0",
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
                'eGenix,
                '"EFL-2.0",
                '"EFL-1.0",
                '"eCos-2.0",
                '"ECL-2.0",
                '"ECL-1.0",
                'dvipdfm,
                'DSDP,
                '"DRL-1.0",
                'Dotseqn,
                'DOC,
                'diffmark,
                '"D-FSL-1.0",
                'curl,
                'Cube,
                '"CUA-OPL-1.0",
                'CrystalStacker,
                'Crossword,
                '"CPOL-1.02",
                '"CPL-1.0",
                '"CPAL-1.0",
                '"copyleft-next-0.3.1",
                '"copyleft-next-0.3.0",
                '"Condor-1.1",
                'CNRI-Python-GPL-Compatible,
                'CNRI-Python,
                'CNRI-Jython,
                'ClArtistic,
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
                '"CDLA-Permissive-1.0",
                '"CDL-1.0",
                '"CDDL-1.1",
                '"CDDL-1.0",
                '"CC0-1.0",
                'CC-PDDC,
                '"CC-BY-SA-4.0",
                '"CC-BY-SA-3.0-AT",
                '"CC-BY-SA-3.0",
                '"CC-BY-SA-2.5",
                '"CC-BY-SA-2.1-JP",
                '"CC-BY-SA-2.0-UK",
                '"CC-BY-SA-2.0",
                '"CC-BY-SA-1.0",
                '"CC-BY-ND-4.0",
                '"CC-BY-ND-3.0",
                '"CC-BY-ND-2.5",
                '"CC-BY-ND-2.0",
                '"CC-BY-ND-1.0",
                '"CC-BY-NC-SA-4.0",
                '"CC-BY-NC-SA-3.0",
                '"CC-BY-NC-SA-2.5",
                '"CC-BY-NC-SA-2.0",
                '"CC-BY-NC-SA-1.0",
                '"CC-BY-NC-ND-4.0",
                '"CC-BY-NC-ND-3.0-IGO",
                '"CC-BY-NC-ND-3.0",
                '"CC-BY-NC-ND-2.5",
                '"CC-BY-NC-ND-2.0",
                '"CC-BY-NC-ND-1.0",
                '"CC-BY-NC-4.0",
                '"CC-BY-NC-3.0",
                '"CC-BY-NC-2.5",
                '"CC-BY-NC-2.0",
                '"CC-BY-NC-1.0",
                '"CC-BY-4.0",
                '"CC-BY-3.0-US",
                '"CC-BY-3.0-AT",
                '"CC-BY-3.0",
                '"CC-BY-2.5",
                '"CC-BY-2.0",
                '"CC-BY-1.0",
                '"CATOSL-1.1",
                'Caldera,
                '"CAL-1.0-Combined-Work-Exception",
                '"CAL-1.0",
                '"C-UDA-1.0",
                '"bzip2-1.0.6",
                '"bzip2-1.0.5",
                '"BUSL-1.1",
                '"BSL-1.0",
                'BSD-Source-Code,
                'BSD-Protection,
                'BSD-4-Clause-UC,
                'BSD-4-Clause-Shortened,
                'BSD-4-Clause,
                'BSD-3-Clause-Open-MPI,
                'BSD-3-Clause-No-Nuclear-Warranty,
                'BSD-3-Clause-No-Nuclear-License-2014,
                'BSD-3-Clause-No-Nuclear-License,
                'BSD-3-Clause-Modification,
                'BSD-3-Clause-LBNL,
                'BSD-3-Clause-Clear,
                'BSD-3-Clause-Attribution,
                'BSD-3-Clause,
                'BSD-2-Clause-Views,
                'BSD-2-Clause-Patent,
                'BSD-2-Clause-NetBSD,
                'BSD-2-Clause-FreeBSD,
                'BSD-2-Clause,
                'BSD-1-Clause,
                'Borceux,
                '"BlueOak-1.0.0",
                'blessing,
                '"BitTorrent-1.1",
                '"BitTorrent-1.0",
                'Beerware,
                'Barr,
                'Bahyph,
                '"Artistic-2.0",
                '"Artistic-1.0-Perl",
                '"Artistic-1.0-cl8",
                '"Artistic-1.0",
                '"APSL-2.0",
                '"APSL-1.2",
                '"APSL-1.1",
                '"APSL-1.0",
                '"APL-1.0",
                'APAFML,
                '"Apache-2.0",
                '"Apache-1.1",
                '"Apache-1.0",
                'ANTLR-PD-fallback,
                'ANTLR-PD,
                'AMPAS,
                'AML,
                'AMDPLPA,
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
                'Adobe-Glyph,
                'Adobe-2006,
                'Abstyles,
                'AAL,
                '"0BSD"
              |]
            ],
      "definitions.orcid" =
        js2n.string.Matches
            "https://orcid\\.org/[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{3}[0-9X]{1}",
      "definitions.person" =
        {
            address
              | refs."definitions.address"
              | String
              | doc "The person's address."
              | optional,
            affiliation
              | js2n.string.MinLength 1
              | doc "The person's affilitation."
              | optional,
            alias
              | refs."definitions.alias"
              | String
              | doc "The person's alias."
              | optional,
            city
              | refs."definitions.city"
              | String
              | doc "The person's city."
              | optional,
            country
              | refs."definitions.country"
              | String
              | doc "The person's country."
              | optional,
            email
              | refs."definitions.email"
              | String
              | doc "The person's email address."
              | optional,
            family-names
              | js2n.string.MinLength 1
              | doc "The person's family names."
              | optional,
            fax
              | refs."definitions.fax"
              | String
              | doc "The person's fax number."
              | optional,
            given-names
              | js2n.string.MinLength 1
              | doc "The person's given names."
              | optional,
            name-particle
              | js2n.string.MinLength 1
              | doc "The person's name particle, e.g., a nobiliary particle or a preposition meaning 'of' or 'from' (for example 'von' in 'Alexander von Humboldt')."
              | optional,
            name-suffix
              | js2n.string.MinLength 1
              | doc "The person's name-suffix, e.g. 'Jr.' for Sammy Davis Jr. or 'III' for Frank Edwin Wright III."
              | optional,
            orcid
              | refs."definitions.orcid"
              | String
              | doc "The person's ORCID."
              | optional,
            post-code
              | refs."definitions.post-code"
              | std.contract.any_of [ Number, String ]
              | doc "The person's post-code."
              | optional,
            region
              | refs."definitions.region"
              | String
              | doc "The person's region."
              | optional,
            tel
              | refs."definitions.tel"
              | String
              | doc "The person's phone number."
              | optional,
            website
              | refs."definitions.url"
              | String
              | doc "The person's website."
              | optional,
          },
      "definitions.post-code" =
        std.contract.any_of [ js2n.string.MinLength 1, Number ],
      "definitions.reference" =
        {
            abbreviation
              | js2n.string.MinLength 1
              | doc "The abbreviation of a work."
              | optional,
            abstract
              | js2n.string.MinLength 1
              | doc "The abstract of a work."
              | optional,
            authors
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ]
                  ]
              )
              | doc "The author(s) of a work.",
            collection-doi
              | refs."definitions.doi"
              | String
              | doc "The DOI of a collection containing the work."
              | optional,
            collection-title
              | js2n.string.MinLength 1
              | doc "The title of a collection or proceedings."
              | optional,
            collection-type
              | js2n.string.MinLength 1
              | doc "The type of a collection."
              | optional,
            commit | refs."definitions.commit" | String | optional,
            conference
              | refs."definitions.entity"
              | { _ | Dyn }
              | doc "The conference where the work was presented."
              | optional,
            contact
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ]
                  ]
              )
              | doc "The contact person, group, company, etc. for a work."
              | optional,
            copyright
              | js2n.string.MinLength 1
              | doc "The copyright information pertaining to the work."
              | optional,
            data-type
              | js2n.string.MinLength 1
              | doc "The data type of a data set."
              | optional,
            database
              | js2n.string.MinLength 1
              | doc "The name of the database where a work was accessed/is stored."
              | optional,
            database-provider
              | refs."definitions.entity"
              | { _ | Dyn }
              | doc "The provider of the database where a work was accessed/is stored."
              | optional,
            date-accessed
              | refs."definitions.date"
              | String
              | doc "The date the work was accessed."
              | optional,
            date-downloaded
              | refs."definitions.date"
              | String
              | doc "The date the work has been downloaded."
              | optional,
            date-published
              | refs."definitions.date"
              | String
              | doc "The date the work has been published."
              | optional,
            date-released
              | refs."definitions.date"
              | String
              | doc "The date the work has been released."
              | optional,
            department
              | js2n.string.MinLength 1
              | doc "The department where a work has been produced."
              | optional,
            doi
              | refs."definitions.doi"
              | String
              | doc "The DOI of the work."
              | optional,
            edition
              | js2n.string.MinLength 1
              | doc "The edition of the work."
              | optional,
            editors
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ]
                  ]
              )
              | doc "The editor(s) of a work."
              | optional,
            editors-series
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ]
                  ]
              )
              | doc "The editor(s) of a series in which a work has been published."
              | optional,
            end
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The end page of the work."
              | optional,
            entry
              | js2n.string.MinLength 1
              | doc "An entry in the collection that constitutes the work."
              | optional,
            filename
              | js2n.string.MinLength 1
              | doc "The name of the electronic file containing the work."
              | optional,
            format
              | js2n.string.MinLength 1
              | doc "The format in which a work is represented."
              | optional,
            identifiers
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.identifier", { _ | Dyn } ]
              )
              | doc "The identifier(s) of the work."
              | optional,
            institution
              | refs."definitions.entity"
              | { _ | Dyn }
              | doc "The institution where a work has been produced or published."
              | optional,
            isbn
              | js2n.string.Matches "^[0-9\\- ]{10,17}X?$"
              | doc "The ISBN of the work."
              | optional,
            issn
              | js2n.string.Matches "^\\d{4}-\\d{3}[\\dxX]$"
              | doc "The ISSN of the work."
              | optional,
            issue
              | std.contract.any_of [ js2n.string.MinLength 1, Number ]
              | doc "The issue of a periodical in which a work appeared."
              | optional,
            issue-date
              | js2n.string.MinLength 1
              | doc "The publication date of the issue of a periodical in which a work appeared."
              | optional,
            issue-title
              | js2n.string.MinLength 1
              | doc "The name of the issue of a periodical in which the work appeared."
              | optional,
            journal
              | js2n.string.MinLength 1
              | doc "The name of the journal/magazine/newspaper/periodical where the work was published."
              | optional,
            keywords
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc "Keywords pertaining to the work."
              | optional,
            languages
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    js2n.string.MaxLength 3,
                    js2n.string.MinLength 2,
                    js2n.string.Matches "^[a-z]{2,3}$"
                  ]
              )
              | doc "The language identifier(s) of the work according to ISO 639 language strings."
              | optional,
            license | refs."definitions.license" | optional,
            license-url
              | refs."definitions.url"
              | String
              | doc "The URL of the license text under which the work is licensed (only for non-standard licenses not included in the SPDX License List)."
              | optional,
            loc-end
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The line of code in the file where the work ends."
              | optional,
            loc-start
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The line of code in the file where the work starts."
              | optional,
            location
              | refs."definitions.entity"
              | { _ | Dyn }
              | doc "The location of the work."
              | optional,
            medium
              | js2n.string.MinLength 1
              | doc "The medium of the work."
              | optional,
            month
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 12,
                      js2n.number.Minimum 1
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"12",
                        '"11",
                        '"10",
                        '"9",
                        '"8",
                        '"7",
                        '"6",
                        '"5",
                        '"4",
                        '"3",
                        '"2",
                        '"1"
                      |]
                    ]
                ]
              | doc "The month in which a work has been published."
              | optional,
            nihmsid
              | js2n.string.MinLength 1
              | doc "The NIHMSID of a work."
              | optional,
            notes
              | js2n.string.MinLength 1
              | doc "Notes pertaining to the work."
              | optional,
            number
              | std.contract.any_of [ js2n.string.MinLength 1, Number ]
              | doc "The accession number for a work."
              | optional,
            number-volumes
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The number of volumes making up the collection in which the work has been published."
              | optional,
            pages
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The number of pages of the work."
              | optional,
            patent-states
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc "The states for which a patent is granted."
              | optional,
            pmcid
              | js2n.string.Matches "^PMC[0-9]{7}$"
              | doc "The PMCID of a work."
              | optional,
            publisher
              | refs."definitions.entity"
              | { _ | Dyn }
              | doc "The publisher who has published the work."
              | optional,
            recipients
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ]
                  ]
              )
              | doc "The recipient(s) of a personal communication."
              | optional,
            repository
              | refs."definitions.url"
              | String
              | doc "The URL of the work in a repository (when the repository is neither a source code repository nor a build artifact repository)."
              | optional,
            repository-artifact
              | refs."definitions.url"
              | String
              | doc "The URL of the work in a build artifact/binary repository."
              | optional,
            repository-code
              | refs."definitions.url"
              | String
              | doc "The URL of the work in a source code repository."
              | optional,
            scope
              | js2n.string.MinLength 1
              | doc "The scope of the reference, e.g., the section of the work it adheres to."
              | optional,
            section
              | std.contract.any_of [ js2n.string.MinLength 1, Number ]
              | doc "The section of a work that is referenced."
              | optional,
            senders
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ]
                  ]
              )
              | doc "The sender(s) of a personal communication."
              | optional,
            start
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The start page of the work."
              | optional,
            status
              | std.enum.TagOrString
              | [|
                'submitted,
                'preprint,
                'in-press,
                'in-preparation,
                'advance-online,
                'abstract
              |]
              | doc "The publication status of the work."
              | optional,
            term
              | js2n.string.MinLength 1
              | doc "The term being referenced if the work is a dictionary or encyclopedia."
              | optional,
            thesis-type
              | js2n.string.MinLength 1
              | doc "The type of the thesis that is the work."
              | optional,
            title | js2n.string.MinLength 1 | doc "The title of the work.",
            translators
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.entity", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.person", { _ | Dyn } ]
                  ]
              )
              | doc "The translator(s) of a work."
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'website,
                'video,
                'unpublished,
                'thesis,
                'statute,
                'standard,
                'sound-recording,
                'software,
                'software-virtual-machine,
                'software-executable,
                'software-container,
                'software-code,
                'slides,
                'serial,
                'report,
                'proceedings,
                'personal-communication,
                'patent,
                'pamphlet,
                'newspaper-article,
                'music,
                'multimedia,
                'map,
                'manual,
                'magazine-article,
                'legal-rule,
                'legal-case,
                'historical-work,
                'hearing,
                'grant,
                'government-document,
                'generic,
                'film-broadcast,
                'encyclopedia,
                'edited-work,
                'dictionary,
                'database,
                'data,
                'conference,
                'conference-paper,
                'catalogue,
                'book,
                'blog,
                'bill,
                'audiovisual,
                'article,
                'art
              |]
              | doc "The type of the work.",
            url
              | refs."definitions.url"
              | String
              | doc "The URL of the work."
              | optional,
            version
              | refs."definitions.version"
              | std.contract.any_of [ Number, String ]
              | doc "The version of the work."
              | optional,
            volume
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The volume of the periodical in which a work appeared."
              | optional,
            volume-title
              | js2n.string.MinLength 1
              | doc "The title of the volume in which the work appeared."
              | optional,
            year
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The year in which a work has been published."
              | optional,
            year-original
              | std.contract.any_of
                [ std.number.Integer, js2n.string.MinLength 1 ]
              | doc "The year of the original publication."
              | optional,
          },
      "definitions.region" = js2n.string.MinLength 1,
      "definitions.swh-identifier" =
        js2n.string.Matches "^swh:1:(snp|rel|rev|dir|cnt):[0-9a-fA-F]{40}$",
      "definitions.tel" = js2n.string.MinLength 1,
      "definitions.url" = js2n.string.Matches "^(https|http|ftp|sftp)://.+",
      "definitions.version" =
        std.contract.any_of [ js2n.string.MinLength 1, Number ],
    }
    in
  {
      abstract
        | js2n.string.MinLength 1
        | doc "A description of the software or dataset."
        | optional,
      authors
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [ refs."definitions.person", refs."definitions.entity" ]
        )
        | doc "The author(s) of the software or dataset.",
      cff-version
        | js2n.string.Matches "^1\\.2\\.0$"
        | doc "The version of CFF used for providing the citation metadata.",
      commit | refs."definitions.commit" | optional,
      contact
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [ refs."definitions.person", refs."definitions.entity" ]
        )
        | doc "The contact person, group, company, etc. for the software or dataset."
        | optional,
      date-released
        | refs."definitions.date"
        | doc "The date the work has been released."
        | optional,
      doi | refs."definitions.doi" | optional,
      identifiers
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.identifier"
        | doc "The identifiers of the software or dataset."
        | optional,
      keywords
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Keywords that describe the work."
        | optional,
      license | refs."definitions.license" | optional,
      license-url
        | refs."definitions.url"
        | doc "The URL of the license text under which the software or dataset is licensed (only for non-standard licenses not included in the SPDX License List)."
        | optional,
      message
        | js2n.string.MinLength 1
        | doc "A message to the human reader of the file to let them know what to do with the citation metadata.",
      preferred-citation
        | refs."definitions.reference"
        | doc "A reference to another work that should be cited instead of the software or dataset itself."
        | optional,
      references
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.reference"
        | doc "Reference(s) to other creative works."
        | optional,
      repository
        | refs."definitions.url"
        | doc "The URL of the software or dataset in a repository (when the repository is neither a source code repository nor a build artifact repository)."
        | optional,
      repository-artifact
        | refs."definitions.url"
        | doc "The URL of the software in a build artifact/binary repository."
        | optional,
      repository-code
        | refs."definitions.url"
        | doc "The URL of the software or dataset in a source code repository."
        | optional,
      title
        | js2n.string.MinLength 1
        | doc "The name of the software or dataset.",
      type
        | std.enum.TagOrString
        | [| 'software, 'dataset |]
        | doc "The type of the work."
        | optional,
      url
        | refs."definitions.url"
        | doc "The URL of a landing page/website for the software or dataset."
        | optional,
      version
        | refs."definitions.version"
        | doc "The version of the software or dataset."
        | optional,
    }