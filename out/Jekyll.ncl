# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.collection-permalink" = String,
      "definitions.global-permalink" = String,
      "definitions.nullable-timezone" =
        js2n.Nullable
            (std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  '"Europe/Kyiv",
                  'Greenwich,
                  'GMT0,
                  'GMT-0,
                  '"GMT+0",
                  'GMT,
                  'Universal,
                  'UCT,
                  'Turkey,
                  'Zulu,
                  'W-SU,
                  'UTC,
                  '"US/Samoa",
                  '"US/Pacific",
                  '"US/Mountain",
                  '"US/Michigan",
                  '"US/Indiana-Starke",
                  '"US/Hawaii",
                  '"US/Eastern",
                  '"US/East-Indiana",
                  '"US/Central",
                  '"US/Arizona",
                  '"US/Aleutian",
                  '"US/Alaska",
                  'Singapore,
                  'ROC,
                  'PRC,
                  'Portugal,
                  'Poland,
                  '"Pacific/Yap",
                  '"Pacific/Wallis",
                  '"Pacific/Wake",
                  '"Pacific/Truk",
                  '"Pacific/Tongatapu",
                  '"Pacific/Tarawa",
                  '"Pacific/Tahiti",
                  '"Pacific/Samoa",
                  '"Pacific/Saipan",
                  '"Pacific/Rarotonga",
                  '"Pacific/Port_Moresby",
                  '"Pacific/Ponape",
                  '"Pacific/Pohnpei",
                  '"Pacific/Pitcairn",
                  '"Pacific/Palau",
                  '"Pacific/Pago_Pago",
                  '"Pacific/Noumea",
                  '"Pacific/Norfolk",
                  '"Pacific/Niue",
                  '"Pacific/Nauru",
                  '"Pacific/Midway",
                  '"Pacific/Marquesas",
                  '"Pacific/Majuro",
                  '"Pacific/Kwajalein",
                  '"Pacific/Kosrae",
                  '"Pacific/Kiritimati",
                  '"Pacific/Kanton",
                  '"Pacific/Johnston",
                  '"Pacific/Honolulu",
                  '"Pacific/Guam",
                  '"Pacific/Guadalcanal",
                  '"Pacific/Gambier",
                  '"Pacific/Galapagos",
                  '"Pacific/Funafuti",
                  '"Pacific/Fiji",
                  '"Pacific/Fakaofo",
                  '"Pacific/Enderbury",
                  '"Pacific/Efate",
                  '"Pacific/Easter",
                  '"Pacific/Chuuk",
                  '"Pacific/Chatham",
                  '"Pacific/Bougainville",
                  '"Pacific/Auckland",
                  '"Pacific/Apia",
                  'NZ-CHAT,
                  'NZ,
                  'Navajo,
                  '"Mexico/General",
                  '"Mexico/BajaSur",
                  '"Mexico/BajaNorte",
                  'Libya,
                  'Kwajalein,
                  'Japan,
                  'Jamaica,
                  'Israel,
                  'Iran,
                  '"Indian/Reunion",
                  '"Indian/Mayotte",
                  '"Indian/Mauritius",
                  '"Indian/Maldives",
                  '"Indian/Mahe",
                  '"Indian/Kerguelen",
                  '"Indian/Comoro",
                  '"Indian/Cocos",
                  '"Indian/Christmas",
                  '"Indian/Chagos",
                  '"Indian/Antananarivo",
                  'Iceland,
                  'Hongkong,
                  'GB-Eire,
                  'GB,
                  '"Europe/Zurich",
                  '"Europe/Zaporozhye",
                  '"Europe/Zagreb",
                  '"Europe/Warsaw",
                  '"Europe/Volgograd",
                  '"Europe/Vilnius",
                  '"Europe/Vienna",
                  '"Europe/Vatican",
                  '"Europe/Vaduz",
                  '"Europe/Uzhgorod",
                  '"Europe/Ulyanovsk",
                  '"Europe/Tiraspol",
                  '"Europe/Tirane",
                  '"Europe/Tallinn",
                  '"Europe/Stockholm",
                  '"Europe/Sofia",
                  '"Europe/Skopje",
                  '"Europe/Simferopol",
                  '"Europe/Saratov",
                  '"Europe/Sarajevo",
                  '"Europe/San_Marino",
                  '"Europe/Samara",
                  '"Europe/Rome",
                  '"Europe/Riga",
                  '"Europe/Prague",
                  '"Europe/Podgorica",
                  '"Europe/Paris",
                  '"Europe/Oslo",
                  '"Europe/Nicosia",
                  '"Europe/Moscow",
                  '"Europe/Monaco",
                  '"Europe/Minsk",
                  '"Europe/Mariehamn",
                  '"Europe/Malta",
                  '"Europe/Madrid",
                  '"Europe/Luxembourg",
                  '"Europe/London",
                  '"Europe/Ljubljana",
                  '"Europe/Lisbon",
                  '"Europe/Kirov",
                  '"Europe/Kiev",
                  '"Europe/Kaliningrad",
                  '"Europe/Jersey",
                  '"Europe/Istanbul",
                  '"Europe/Isle_of_Man",
                  '"Europe/Helsinki",
                  '"Europe/Guernsey",
                  '"Europe/Gibraltar",
                  '"Europe/Dublin",
                  '"Europe/Copenhagen",
                  '"Europe/Chisinau",
                  '"Europe/Busingen",
                  '"Europe/Budapest",
                  '"Europe/Bucharest",
                  '"Europe/Brussels",
                  '"Europe/Bratislava",
                  '"Europe/Berlin",
                  '"Europe/Belgrade",
                  '"Europe/Belfast",
                  '"Europe/Athens",
                  '"Europe/Astrakhan",
                  '"Europe/Andorra",
                  '"Europe/Amsterdam",
                  '"Etc/Zulu",
                  '"Etc/UTC",
                  '"Etc/Universal",
                  '"Etc/UCT",
                  '"Etc/Greenwich",
                  '"Etc/GMT0",
                  '"Etc/GMT-9",
                  '"Etc/GMT-8",
                  '"Etc/GMT-7",
                  '"Etc/GMT-6",
                  '"Etc/GMT-5",
                  '"Etc/GMT-4",
                  '"Etc/GMT-3",
                  '"Etc/GMT-2",
                  '"Etc/GMT-14",
                  '"Etc/GMT-13",
                  '"Etc/GMT-12",
                  '"Etc/GMT-11",
                  '"Etc/GMT-10",
                  '"Etc/GMT-1",
                  '"Etc/GMT-0",
                  '"Etc/GMT+9",
                  '"Etc/GMT+8",
                  '"Etc/GMT+7",
                  '"Etc/GMT+6",
                  '"Etc/GMT+5",
                  '"Etc/GMT+4",
                  '"Etc/GMT+3",
                  '"Etc/GMT+2",
                  '"Etc/GMT+12",
                  '"Etc/GMT+11",
                  '"Etc/GMT+10",
                  '"Etc/GMT+1",
                  '"Etc/GMT+0",
                  '"Etc/GMT",
                  'Eire,
                  'Egypt,
                  'Cuba,
                  '"Chile/EasterIsland",
                  '"Chile/Continental",
                  '"Canada/Yukon",
                  '"Canada/Saskatchewan",
                  '"Canada/Pacific",
                  '"Canada/Newfoundland",
                  '"Canada/Mountain",
                  '"Canada/Eastern",
                  '"Canada/Central",
                  '"Canada/Atlantic",
                  '"Brazil/West",
                  '"Brazil/East",
                  '"Brazil/DeNoronha",
                  '"Brazil/Acre",
                  '"Australia/Yancowinna",
                  '"Australia/West",
                  '"Australia/Victoria",
                  '"Australia/Tasmania",
                  '"Australia/Sydney",
                  '"Australia/South",
                  '"Australia/Queensland",
                  '"Australia/Perth",
                  '"Australia/NSW",
                  '"Australia/North",
                  '"Australia/Melbourne",
                  '"Australia/Lord_Howe",
                  '"Australia/Lindeman",
                  '"Australia/LHI",
                  '"Australia/Hobart",
                  '"Australia/Eucla",
                  '"Australia/Darwin",
                  '"Australia/Currie",
                  '"Australia/Canberra",
                  '"Australia/Broken_Hill",
                  '"Australia/Brisbane",
                  '"Australia/Adelaide",
                  '"Australia/ACT",
                  '"Atlantic/Stanley",
                  '"Atlantic/St_Helena",
                  '"Atlantic/South_Georgia",
                  '"Atlantic/Reykjavik",
                  '"Atlantic/Madeira",
                  '"Atlantic/Jan_Mayen",
                  '"Atlantic/Faroe",
                  '"Atlantic/Faeroe",
                  '"Atlantic/Cape_Verde",
                  '"Atlantic/Canary",
                  '"Atlantic/Bermuda",
                  '"Atlantic/Azores",
                  '"Asia/Yerevan",
                  '"Asia/Yekaterinburg",
                  '"Asia/Yangon",
                  '"Asia/Yakutsk",
                  '"Asia/Vladivostok",
                  '"Asia/Vientiane",
                  '"Asia/Ust-Nera",
                  '"Asia/Urumqi",
                  '"Asia/Ulan_Bator",
                  '"Asia/Ulaanbaatar",
                  '"Asia/Ujung_Pandang",
                  '"Asia/Tomsk",
                  '"Asia/Tokyo",
                  '"Asia/Thimphu",
                  '"Asia/Thimbu",
                  '"Asia/Tel_Aviv",
                  '"Asia/Tehran",
                  '"Asia/Tbilisi",
                  '"Asia/Tashkent",
                  '"Asia/Taipei",
                  '"Asia/Srednekolymsk",
                  '"Asia/Singapore",
                  '"Asia/Shanghai",
                  '"Asia/Seoul",
                  '"Asia/Samarkand",
                  '"Asia/Sakhalin",
                  '"Asia/Saigon",
                  '"Asia/Riyadh",
                  '"Asia/Rangoon",
                  '"Asia/Qyzylorda",
                  '"Asia/Qostanay",
                  '"Asia/Qatar",
                  '"Asia/Pyongyang",
                  '"Asia/Pontianak",
                  '"Asia/Phnom_Penh",
                  '"Asia/Oral",
                  '"Asia/Omsk",
                  '"Asia/Novosibirsk",
                  '"Asia/Novokuznetsk",
                  '"Asia/Nicosia",
                  '"Asia/Muscat",
                  '"Asia/Manila",
                  '"Asia/Makassar",
                  '"Asia/Magadan",
                  '"Asia/Macau",
                  '"Asia/Macao",
                  '"Asia/Kuwait",
                  '"Asia/Kuching",
                  '"Asia/Kuala_Lumpur",
                  '"Asia/Krasnoyarsk",
                  '"Asia/Kolkata",
                  '"Asia/Khandyga",
                  '"Asia/Katmandu",
                  '"Asia/Kathmandu",
                  '"Asia/Kashgar",
                  '"Asia/Karachi",
                  '"Asia/Kamchatka",
                  '"Asia/Kabul",
                  '"Asia/Jerusalem",
                  '"Asia/Jayapura",
                  '"Asia/Jakarta",
                  '"Asia/Istanbul",
                  '"Asia/Irkutsk",
                  '"Asia/Hovd",
                  '"Asia/Hong_Kong",
                  '"Asia/Ho_Chi_Minh",
                  '"Asia/Hebron",
                  '"Asia/Harbin",
                  '"Asia/Gaza",
                  '"Asia/Famagusta",
                  '"Asia/Dushanbe",
                  '"Asia/Dubai",
                  '"Asia/Dili",
                  '"Asia/Dhaka",
                  '"Asia/Damascus",
                  '"Asia/Dacca",
                  '"Asia/Colombo",
                  '"Asia/Chungking",
                  '"Asia/Chongqing",
                  '"Asia/Choibalsan",
                  '"Asia/Chita",
                  '"Asia/Calcutta",
                  '"Asia/Brunei",
                  '"Asia/Bishkek",
                  '"Asia/Beirut",
                  '"Asia/Barnaul",
                  '"Asia/Bangkok",
                  '"Asia/Baku",
                  '"Asia/Bahrain",
                  '"Asia/Baghdad",
                  '"Asia/Atyrau",
                  '"Asia/Ashkhabad",
                  '"Asia/Ashgabat",
                  '"Asia/Aqtobe",
                  '"Asia/Aqtau",
                  '"Asia/Anadyr",
                  '"Asia/Amman",
                  '"Asia/Almaty",
                  '"Asia/Aden",
                  '"Arctic/Longyearbyen",
                  '"Antarctica/Vostok",
                  '"Antarctica/Troll",
                  '"Antarctica/Syowa",
                  '"Antarctica/South_Pole",
                  '"Antarctica/Rothera",
                  '"Antarctica/Palmer",
                  '"Antarctica/McMurdo",
                  '"Antarctica/Mawson",
                  '"Antarctica/Macquarie",
                  '"Antarctica/DumontDUrville",
                  '"Antarctica/Davis",
                  '"Antarctica/Casey",
                  '"America/Yellowknife",
                  '"America/Yakutat",
                  '"America/Winnipeg",
                  '"America/Whitehorse",
                  '"America/Virgin",
                  '"America/Vancouver",
                  '"America/Tortola",
                  '"America/Toronto",
                  '"America/Tijuana",
                  '"America/Thunder_Bay",
                  '"America/Thule",
                  '"America/Tegucigalpa",
                  '"America/Swift_Current",
                  '"America/St_Vincent",
                  '"America/St_Thomas",
                  '"America/St_Lucia",
                  '"America/St_Kitts",
                  '"America/St_Johns",
                  '"America/St_Barthelemy",
                  '"America/Sitka",
                  '"America/Shiprock",
                  '"America/Scoresbysund",
                  '"America/Sao_Paulo",
                  '"America/Santo_Domingo",
                  '"America/Santiago",
                  '"America/Santarem",
                  '"America/Santa_Isabel",
                  '"America/Rosario",
                  '"America/Rio_Branco",
                  '"America/Resolute",
                  '"America/Regina",
                  '"America/Recife",
                  '"America/Rankin_Inlet",
                  '"America/Rainy_River",
                  '"America/Punta_Arenas",
                  '"America/Puerto_Rico",
                  '"America/Porto_Velho",
                  '"America/Porto_Acre",
                  '"America/Port_of_Spain",
                  '"America/Port-au-Prince",
                  '"America/Phoenix",
                  '"America/Paramaribo",
                  '"America/Pangnirtung",
                  '"America/Panama",
                  '"America/Ojinaga",
                  '"America/Nuuk",
                  '"America/North_Dakota/New_Salem",
                  '"America/North_Dakota/Center",
                  '"America/North_Dakota/Beulah",
                  '"America/Noronha",
                  '"America/Nome",
                  '"America/Nipigon",
                  '"America/New_York",
                  '"America/Nassau",
                  '"America/Montserrat",
                  '"America/Montreal",
                  '"America/Montevideo",
                  '"America/Monterrey",
                  '"America/Moncton",
                  '"America/Miquelon",
                  '"America/Mexico_City",
                  '"America/Metlakatla",
                  '"America/Merida",
                  '"America/Menominee",
                  '"America/Mendoza",
                  '"America/Mazatlan",
                  '"America/Matamoros",
                  '"America/Martinique",
                  '"America/Marigot",
                  '"America/Manaus",
                  '"America/Managua",
                  '"America/Maceio",
                  '"America/Lower_Princes",
                  '"America/Louisville",
                  '"America/Los_Angeles",
                  '"America/Lima",
                  '"America/La_Paz",
                  '"America/Kralendijk",
                  '"America/Knox_IN",
                  '"America/Kentucky/Monticello",
                  '"America/Kentucky/Louisville",
                  '"America/Juneau",
                  '"America/Jujuy",
                  '"America/Jamaica",
                  '"America/Iqaluit",
                  '"America/Inuvik",
                  '"America/Indianapolis",
                  '"America/Indiana/Winamac",
                  '"America/Indiana/Vincennes",
                  '"America/Indiana/Vevay",
                  '"America/Indiana/Tell_City",
                  '"America/Indiana/Petersburg",
                  '"America/Indiana/Marengo",
                  '"America/Indiana/Knox",
                  '"America/Indiana/Indianapolis",
                  '"America/Hermosillo",
                  '"America/Havana",
                  '"America/Halifax",
                  '"America/Guyana",
                  '"America/Guayaquil",
                  '"America/Guatemala",
                  '"America/Guadeloupe",
                  '"America/Grenada",
                  '"America/Grand_Turk",
                  '"America/Goose_Bay",
                  '"America/Godthab",
                  '"America/Glace_Bay",
                  '"America/Fortaleza",
                  '"America/Fort_Wayne",
                  '"America/Fort_Nelson",
                  '"America/Ensenada",
                  '"America/El_Salvador",
                  '"America/Eirunepe",
                  '"America/Edmonton",
                  '"America/Dominica",
                  '"America/Detroit",
                  '"America/Denver",
                  '"America/Dawson_Creek",
                  '"America/Dawson",
                  '"America/Danmarkshavn",
                  '"America/Curacao",
                  '"America/Cuiaba",
                  '"America/Creston",
                  '"America/Costa_Rica",
                  '"America/Cordoba",
                  '"America/Coral_Harbour",
                  '"America/Chihuahua",
                  '"America/Chicago",
                  '"America/Cayman",
                  '"America/Cayenne",
                  '"America/Catamarca",
                  '"America/Caracas",
                  '"America/Cancun",
                  '"America/Campo_Grande",
                  '"America/Cambridge_Bay",
                  '"America/Buenos_Aires",
                  '"America/Boise",
                  '"America/Bogota",
                  '"America/Boa_Vista",
                  '"America/Blanc-Sablon",
                  '"America/Belize",
                  '"America/Belem",
                  '"America/Barbados",
                  '"America/Bahia_Banderas",
                  '"America/Bahia",
                  '"America/Atka",
                  '"America/Atikokan",
                  '"America/Asuncion",
                  '"America/Aruba",
                  '"America/Argentina/Ushuaia",
                  '"America/Argentina/Tucuman",
                  '"America/Argentina/San_Luis",
                  '"America/Argentina/San_Juan",
                  '"America/Argentina/Salta",
                  '"America/Argentina/Rio_Gallegos",
                  '"America/Argentina/Mendoza",
                  '"America/Argentina/La_Rioja",
                  '"America/Argentina/Jujuy",
                  '"America/Argentina/Cordoba",
                  '"America/Argentina/ComodRivadavia",
                  '"America/Argentina/Catamarca",
                  '"America/Argentina/Buenos_Aires",
                  '"America/Araguaina",
                  '"America/Antigua",
                  '"America/Anguilla",
                  '"America/Anchorage",
                  '"America/Adak",
                  '"Africa/Windhoek",
                  '"Africa/Tunis",
                  '"Africa/Tripoli",
                  '"Africa/Timbuktu",
                  '"Africa/Sao_Tome",
                  '"Africa/Porto-Novo",
                  '"Africa/Ouagadougou",
                  '"Africa/Nouakchott",
                  '"Africa/Niamey",
                  '"Africa/Ndjamena",
                  '"Africa/Nairobi",
                  '"Africa/Monrovia",
                  '"Africa/Mogadishu",
                  '"Africa/Mbabane",
                  '"Africa/Maseru",
                  '"Africa/Maputo",
                  '"Africa/Malabo",
                  '"Africa/Lusaka",
                  '"Africa/Lubumbashi",
                  '"Africa/Luanda",
                  '"Africa/Lome",
                  '"Africa/Libreville",
                  '"Africa/Lagos",
                  '"Africa/Kinshasa",
                  '"Africa/Kigali",
                  '"Africa/Khartoum",
                  '"Africa/Kampala",
                  '"Africa/Juba",
                  '"Africa/Johannesburg",
                  '"Africa/Harare",
                  '"Africa/Gaborone",
                  '"Africa/Freetown",
                  '"Africa/El_Aaiun",
                  '"Africa/Douala",
                  '"Africa/Djibouti",
                  '"Africa/Dar_es_Salaam",
                  '"Africa/Dakar",
                  '"Africa/Conakry",
                  '"Africa/Ceuta",
                  '"Africa/Casablanca",
                  '"Africa/Cairo",
                  '"Africa/Bujumbura",
                  '"Africa/Brazzaville",
                  '"Africa/Blantyre",
                  '"Africa/Bissau",
                  '"Africa/Banjul",
                  '"Africa/Bangui",
                  '"Africa/Bamako",
                  '"Africa/Asmera",
                  '"Africa/Asmara",
                  '"Africa/Algiers",
                  '"Africa/Addis_Ababa",
                  '"Africa/Accra",
                  '"Africa/Abidjan"
                |]
              ]),
    }
    in
  {
      baseurl
        | String
        | doc m%"
          A base URL for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      collections
        | std.contract.any_of
          [
            std.contract.Sequence
              [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ],
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "." =
                        {
                            order
                              | js2n.array.UniqueItems
                              | Array (js2n.string.MinLength 1)
                              | doc m%"
                                The page order list in collection
                                https://jekyllrb.com/docs/collections/#manually-ordering-documents
                              "%
                              | optional,
                            output
                              | Bool
                              | doc m%"
                                Enable/disable collection rendering
                                https://jekyllrb.com/docs/collections/#setup
                              "%
                              | optional,
                            permalink
                              | refs."definitions.collection-permalink"
                              | optional,
                            sort_by
                              | String
                              | doc m%"
                                The collection's front matter sort key
                                https://jekyllrb.com/docs/collections/#sort-by-front-matter-key
                              "%
                              | optional,
                          },
                    },
                properties = {},
                required = {},
              }
          ]
        | doc m%"
          The collections to group several site pages
          https://jekyllrb.com/docs/collections/
        "%
        | optional,
      collections_dir
        | js2n.string.MinLength 1
        | doc m%"
          A directory where to store collections for the current site
          https://jekyllrb.com/docs/collections/#setup
        "%
        | optional,
      data_dir
        | js2n.string.MinLength 1
        | doc m%"
          A directory to store data files for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      defaults
        | Array
          {
            scope
              | {
                path
                  | String
                  | doc m%"
                    The file path for this scope
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%,
                type
                  | String
                  | doc m%"
                    The page type for this scope
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
              }
              | doc m%"
                The scope
                https://jekyllrb.com/docs/configuration/front-matter-defaults/
              "%
              | optional,
            values
              | {
                categories
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc m%"
                    The categories for pages
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
                date
                  | js2n.string.Matches
                    "^\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}( [-+]\\d{4})?$"
                  | doc m%"
                    The date for pages
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
                layout
                  | js2n.string.MinLength 1
                  | doc m%"
                    The layout to use
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
                output
                  | Bool
                  | doc m%"
                    Enable/disable output
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
                permalink | refs."definitions.global-permalink" | optional,
                tags
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc m%"
                    The tags for pages
                    https://jekyllrb.com/docs/configuration/front-matter-defaults/
                  "%
                  | optional,
                ..
              }
              | doc m%"
                The front matter default values
                https://jekyllrb.com/docs/configuration/front-matter-defaults/
              "%
              | optional,
            ..
          }
        | doc m%"
          The front matter defaults
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      destination
        | String
        | doc m%"
          A directory to write files to for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      detach
        | Bool
        | doc m%"
          Whether to detach a server from a terminal for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      disable_disk_cache
        | Bool
        | doc m%"
          Whether to disable caching to disk for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      encoding
        | std.enum.TagOrString
        | [|
          'SJIS-SoftBank,
          'UTF8-SoftBank,
          'stateless-ISO-2022-JP-KDDI,
          'ISO-2022-JP-KDDI,
          'SJIS-KDDI,
          'UTF8-KDDI,
          'SJIS-DoCoMo,
          'UTF8-DoCoMo,
          'UTF-7,
          'MacJapanese,
          'Windows-874,
          'TIS-620,
          'Windows-1255,
          'Windows-1256,
          'CP50221,
          'CP50220,
          'ISO-2022-JP-2,
          'ISO-2022-JP,
          'GB12345,
          'GB2312,
          'EUC-JIS-2004,
          'CP51932,
          'eucJP-ms,
          'stateless-ISO-2022-JP,
          'IBM037,
          'CP951,
          'CP950,
          'macUkraine,
          'macTurkish,
          'macThai,
          'macRomania,
          'macRoman,
          'macIceland,
          'macGreek,
          'macCyrillic,
          'macCroatian,
          'macCentEuro,
          'GB1988,
          'Windows-1258,
          'IBM869,
          'IBM866,
          'IBM865,
          'IBM864,
          'IBM863,
          'IBM862,
          'IBM861,
          'IBM860,
          'IBM857,
          'CP855,
          'IBM855,
          'CP852,
          'IBM852,
          'CP850,
          'IBM775,
          'IBM737,
          'IBM437,
          'Windows-1257,
          'Windows-1254,
          'Windows-1253,
          'Windows-1252,
          'Windows-1251,
          'Windows-1250,
          'Shift_JIS,
          'KOI8-U,
          'KOI8-R,
          'ISO-8859-16,
          'ISO-8859-15,
          'ISO-8859-14,
          'ISO-8859-13,
          'ISO-8859-11,
          'ISO-8859-10,
          'ISO-8859-9,
          'ISO-8859-8,
          'ISO-8859-7,
          'ISO-8859-6,
          'ISO-8859-5,
          'ISO-8859-4,
          'ISO-8859-3,
          'ISO-8859-2,
          'ISO-8859-1,
          'GBK,
          'GB18030,
          'EUC-TW,
          'EUC-KR,
          'Emacs-Mule,
          'CP949,
          'CESU-8,
          'Big5-UAO,
          'Big5-HKSCS,
          'Big5,
          'Windows-31J,
          'EUC-JP,
          'UTF8-MAC,
          'UTF-32,
          'UTF-16,
          'UTF-32LE,
          'UTF-32BE,
          'UTF-16LE,
          'UTF-16BE,
          'US-ASCII,
          'utf-8,
          'UTF-8,
          'ASCII-8BIT
        |]
        | doc m%"
          An encoding for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      excerpt_separator
        | String
        | doc m%"
          A post excerpt separator for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      exclude
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Excluded directories and files from the conversion for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      force_polling
        | Bool
        | doc m%"
          Whether to use polling for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      future
        | Bool
        | doc m%"
          Whether to publish posts or collection documents with a future date for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      highlighter
        | js2n.string.MinLength 1
        | doc m%"
          A syntax highlighter for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      host
        | String
        | doc m%"
          A hostname to listen on for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      ignore_theme_config
        | Bool
        | doc m%"
          Whether to ignore a theme configuration for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      include
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Included directories and files in the conversion for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      includes_dir
        | js2n.string.MinLength 1
        | doc m%"
          An includes directory for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      incremental
        | Bool
        | doc m%"
          Whether to enable the experimental incremental build feature for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      keep_files
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Keeped files when clobbering for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      kramdown
        | {
          auto_id_prefix
            | String
            | doc m%"
              The prefix used for automatically generated header IDs
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          auto_id_stripping
            | Bool
            | doc m%"
              Strip/leave all formatting from header text for automatic ID generation
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          auto_ids
            | Bool
            | doc m%"
              Enable/disable automatic header ID generation
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          entity_output
            | std.enum.TagOrString
            | [| 'symbolic, 'numeric, 'as_input, 'as_char |]
            | doc m%"
              The entity output
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          footnote_backlink
            | String
            | doc m%"
              The text that should be used for the footnote backlinks
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          footnote_backlink_inline
            | String
            | doc m%"
              Enable/disable inlining of the footnote backlink
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          footnote_nr
            | std.number.Integer
            | doc m%"
              The number of the first footnote
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          footnote_prefix
            | String
            | doc m%"
              The prefix for footnote IDs
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          forbidden_inline_options
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              The options that may not be set using the {::options} extension
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          gfm_emoji_opts
            | {
              asset_path
                | String
                | doc "Remote location of emoji assets"
                | optional,
            }
            | doc m%"
              Configuration for rendering emoji amidst GFM
              https://github.com/kramdown/parser-gfm#options
            "%
            | optional,
          gfm_emojis
            | Bool
            | doc m%"
              Enable/disable rendering emoji amidst GFM
              https://github.com/kramdown/parser-gfm#options
            "%
            | optional,
          gfm_quirks
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'no_auto_typographic, 'paragraph_end |]
                ]
            )
            | doc m%"
              Enabled GFM quirks
              https://github.com/kramdown/parser-gfm#options
            "%
            | optional,
          hard_wrap
            | Bool
            | doc m%"
              Enable/disable interpreting line breaks literally
              https://github.com/kramdown/parser-gfm#options
            "%
            | optional,
          header_offset
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc m%"
              The output offset for headers
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          html_to_native
            | Bool
            | doc m%"
              Enable/disable HTML elements to native elements conversion
              https://kramdown.gettalong.org/parser/kramdown.html
            "%
            | optional,
          input
            | String
            | doc m%"
              The selected kramdown processor
              https://jekyllrb.com/docs/configuration/markdown/
            "%
            | optional,
          latex_headers
            | String
            | doc m%"
              The LaTeX commands for different header levels
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          line_width
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc m%"
              The line width when outputting the document
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          link_defs
            | std.contract.any_of
              [
                js2n.string.MinLength 1,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      {
                          "." =
                            std.contract.Sequence
                                [
                                  js2n.array.MaxItems 2,
                                  js2n.array.MinItems 2,
                                  js2n.array.Items
                                    [
                                      refs."definitions.global-permalink",
                                      String
                                    ] js2n.Always
                                ],
                        },
                    properties = {},
                    required = {},
                  }
              ]
            | doc "The pre-defined link definitions"
            | optional,
          math_engine
            | String
            | doc m%"
              The math engine
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          math_engine_opts
            | { _ | Dyn }
            | doc m%"
              The math engine options
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          parse_block_html
            | Bool
            | doc m%"
              Enable/disable processing kramdown syntax in block HTML tags
              https://kramdown.gettalong.org/parser/kramdown.html
            "%
            | optional,
          parse_span_html
            | Bool
            | doc m%"
              Enable/disable processing kramdown syntax in span HTML tags
              https://kramdown.gettalong.org/parser/kramdown.html
            "%
            | optional,
          remove_block_html_tags
            | Bool
            | doc m%"
              Enable/disable removing block HTML tags
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          remove_line_breaks_for_cjk
            | Bool
            | doc m%"
              Leave/remove line breaks between CJK characters
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          remove_span_html_tags
            | Bool
            | doc m%"
              Enable/disable removing span HTML tags
              https://kramdown.gettalong.org/options.html
            "%
            | optional,
          smart_quotes
            | String
            | doc m%"
              The HTML entity names or code points for smart quote output
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          syntax_highlighter
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc m%"
              The syntax highlighter
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          syntax_highlighter_opts
            | { _ | Dyn }
            | doc m%"
              The syntax highlighter options
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          template
            | String
            | doc m%"
              The name of an ERB template file that should be used to wrap the output or the ERB template itself
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          toc_levels
            | std.contract.any_of [ Array Dyn, String ]
            | doc m%"
              The levels that are used for the table of contents
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          transliterated_header_ids
            | Bool
            | doc m%"
              Enable/disable transliterating header text before generating the ID
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          typographic_symbols
            | {
              hellip
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              laquo
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              laquo_space
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              mdash
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              ndash
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              raquo
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              raquo_space
                | String
                | doc m%"
                  Typographical symbol
                  https://kramdown.gettalong.org/converter/html.html
                "%
                | optional,
              ..
            }
            | doc m%"
              The mapping from typographical symbol to output characters
              https://kramdown.gettalong.org/converter/html.html
            "%
            | optional,
          ..
        }
        | doc m%"
          kramdown options
          https://kramdown.gettalong.org/documentation.html
        "%
        | optional,
      layouts_dir
        | std.contract.any_of
          [
            js2n.string.MinLength 1,
            std.contract.Sequence
              [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
          ]
        | doc m%"
          Layout directories for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      limit_posts
        | std.number.Integer
        | doc m%"
          A number of posts to publish for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      liquid
        | {
          error_mode
            | std.enum.TagOrString
            | [| 'strict, 'warn, 'lax |]
            | doc m%"
              The response to errors
              https://jekyllrb.com/docs/configuration/liquid/
            "%
            | optional,
          strict_filters
            | Bool
            | doc m%"
              Enable/disable non-existing filters catch
              https://jekyllrb.com/docs/configuration/liquid/
            "%
            | optional,
          strict_variables
            | Bool
            | doc m%"
              Enable/disable non-assigned variables catch
              https://jekyllrb.com/docs/configuration/liquid/
            "%
            | optional,
        }
        | doc m%"
          Liquid options
          https://jekyllrb.com/docs/configuration/liquid/
        "%
        | optional,
      livereload
        | Bool
        | doc m%"
          Whether to reload pages on the browser when its content was changed for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      livereload_ignore
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          File glob patterns for LiveReload to ignore for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      livereload_max_delay
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          A maximum delay before automatically reloading page for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      livereload_min_delay
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          A minimum delay before automatically reloading page for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      lsi
        | Bool
        | doc m%"
          Whether to produce an index for related posts for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      markdown
        | js2n.string.MinLength 1
        | doc m%"
          A markdown processor for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      markdown_ext
        | js2n.string.MinLength 1
        | doc m%"
          Markdown extensions for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      open_url
        | Bool
        | doc m%"
          Whether to open a site's URL in the browser for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      paginate_path
        | js2n.string.MinLength 1
        | doc m%"
          A destination of the pagination pages for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      permalink | refs."definitions.global-permalink" | optional,
      plugins
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Enabled plugins for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      plugins_dir
        | std.contract.any_of
          [
            js2n.string.MinLength 1,
            std.contract.Sequence
              [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
          ]
        | doc m%"
          Plugin directories for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      port
        | std.number.Integer
        | js2n.number.Maximum 65535
        | js2n.number.Minimum 0
        | doc m%"
          A port to listen on for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      profile
        | Bool
        | doc m%"
          Whether to render profile generation to help identify performance bottlenecks for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      quiet
        | Bool
        | doc m%"
          Whether to hide a normal output while building for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      rdiscount
        | {
          extensions
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'strict,
                    'smart,
                    'safelink,
                    'no_tables,
                    'no_superscript,
                    'no_strikethrough,
                    'no_pseudo_protocols,
                    'no_links,
                    'no_image,
                    'generate_toc,
                    'footnotes,
                    'fold_lines,
                    'filter_styles,
                    'filter_html,
                    'autolink
                  |]
                ]
            )
            | doc m%"
              The enabled extensions
              https://rdoc.info/github/davidfstr/rdiscount/RDiscount
            "%
            | optional,
        }
        | doc m%"
          RDiscount options
          https://rdoc.info/github/davidfstr/rdiscount/RDiscount
        "%
        | optional,
      redcarpet
        | {
          extensions
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'footnotes,
                    'quote,
                    'highlight,
                    'underline,
                    'superscript,
                    'space_after_headers,
                    'lax_spacing,
                    'strikethrough,
                    'disable_indented_code_blocks,
                    'autolink,
                    'fenced_code_blocks,
                    'tables,
                    'no_intra_emphasis
                  |]
                ]
            )
            | doc m%"
              The enabled extensions
              https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use
            "%
            | optional,
        }
        | doc m%"
          Redcarpet options
          https://github.com/vmg/redcarpet
        "%
        | optional,
      safe
        | Bool
        | doc m%"
          Whether to enable non-whitelisted plugins and symbolic links for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      sass
        | {
          fatal_deprecations
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              An array of deprecations or versions to treat as fatal.
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          future_deprecations
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              An array of active deprecations to ignore.
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          load_paths
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              The additional paths with Sass partials
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          quiet_deps
            | Bool
            | doc m%"
              If true, Sass does not print warnings that are caused by dependencies
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          sass_dir
            | String
            | doc m%"
              The path with Sass partials
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          silence_deprecations
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              An array of future deprecations to opt into early.
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          sourcemap
            | std.enum.TagOrString
            | [| 'development, 'always, 'never |]
            | doc m%"
              Control when source maps shall be generated
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          style
            | std.enum.TagOrString
            | [| 'expanded, 'compressed |]
            | doc m%"
              The style of CSS-output
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
          verbose
            | Bool
            | doc m%"
              If true, Sass prints every deprecation warning it encounters
              https://github.com/jekyll/jekyll-sass-converter#configuration-options
            "%
            | optional,
        }
        | doc m%"
          Sass options
          https://github.com/jekyll/jekyll-sass-converter#configuration-options
        "%
        | optional,
      show_dir_listing
        | Bool
        | doc m%"
          Whether to show directory listing instead of an index file for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      show_drafts
        | js2n.Nullable Bool
        | doc m%"
          Whether to process and render draft posts for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      skip_initial_build
        | Bool
        | doc m%"
          Whether to skip an initial site build which occurs before the server is started for the current site
          https://jekyllrb.com/docs/configuration/options/#serve-command-options
        "%
        | optional,
      source
        | String
        | doc m%"
          A directory to read files from for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      strict_front_matter
        | Bool
        | doc m%"
          Whether to fail build if there is a YAML syntax error in a page's front matter for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      timezone
        | refs."definitions.nullable-timezone"
        | doc m%"
          A time zone for the current site
          https://jekyllrb.com/docs/configuration/options/#global-configuration
        "%
        | optional,
      unpublished
        | Bool
        | doc m%"
          Whether to publish posts that were marked as unpublished for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      verbose
        | Bool
        | doc m%"
          Whether to write a verbose output while building for the current site
          https://jekyllrb.com/docs/configuration/options/#build-command-options
        "%
        | optional,
      webrick
        | {
          headers
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { "." = String, },
                properties = {},
                required = {},
              }
            | doc m%"
              The custom headers for this site
              https://docs.ruby-lang.org/en/2.4.0/WEBrick.html
            "%
            | optional,
        }
        | doc m%"
          WEBrick options
          https://docs.ruby-lang.org/en/2.4.0/WEBrick.html
        "%
        | optional,
      whitelist
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Whitelisted plugins for the current site
          https://jekyllrb.com/docs/configuration/default/
        "%
        | optional,
      ..
    }