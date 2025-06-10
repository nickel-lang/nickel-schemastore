# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependency-type" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'development, 'production, 'all, 'indirect, 'direct |]
            ],
      "definitions.insecure-external-code-execution" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'deny, 'allow |] ],
      "definitions.package-ecosystem-values" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'uv,
                'terraform,
                'swift,
                'pub,
                'pip,
                'nuget,
                'npm,
                'mix,
                'maven,
                'helm,
                'gradle,
                'gomod,
                'github-actions,
                'gitsubmodule,
                'elm,
                'dotnet-sdk,
                'docker-compose,
                'docker,
                'devcontainers,
                'composer,
                'cargo,
                'bundler,
                'bun
              |]
            ],
      "definitions.registry" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | {
                  auth-key | String | doc "" | optional,
                  key
                    | String
                    | doc "A reference to a Dependabot secret containing an access key for this registry."
                    | optional,
                  organization | String | doc "" | optional,
                  password
                    | String
                    | doc "A reference to a Dependabot secret containing the password for the specified user."
                    | optional,
                  public-key-fingerprint | String | doc "" | optional,
                  replaces-base
                    | Bool
                    | doc "For registries with type: python-index, if the boolean value is true, pip resolves dependencies by using the specified URL rather than the base URL of the Python Package Index (by default https://pypi.org/simple)."
                    | optional,
                  repo | String | doc "" | optional,
                  token
                    | String
                    | doc "A reference to a Dependabot secret containing an access token for this registry."
                    | optional,
                  type
                    | std.enum.TagOrString
                    | [|
                      'terraform-registry,
                      'rubygems-server,
                      'python-index,
                      'nuget-feed,
                      'npm-registry,
                      'maven-repository,
                      'hex-repository,
                      'hex-organization,
                      'git,
                      'docker-registry,
                      'composer-repository
                    |]
                    | doc "Identifies the type of registry.",
                  url
                    | String
                    | doc "The URL to use to access the dependencies in this registry. The protocol is optional. If not specified, 'https://' is assumed. Dependabot adds or ignores trailing slashes as required.",
                  username
                    | String
                    | doc "The username that Dependabot uses to access the registry."
                    | optional,
                }
              },
              js2n.record.FieldsMatch ".+"
            ],
      "definitions.schedule-day" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'sunday,
                'saturday,
                'friday,
                'thursday,
                'wednesday,
                'tuesday,
                'monday
              |]
            ],
      "definitions.schedule-interval" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'cron,
                'yearly,
                'semiannually,
                'quarterly,
                'monthly,
                'weekly,
                'daily
              |]
            ],
      "definitions.timezone" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
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
                '"Europe/Kyiv",
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
            ],
      "definitions.update" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "directories" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "directory" ],
                      Array Dyn
                    ]
                ],
              {
                allow
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "dependency-name" ],
                            js2n.record.Required [ "dependency-type" ]
                          ],
                        {
                          dependency-name | String | optional,
                          dependency-type
                            | refs."definitions.dependency-type"
                            | String
                            | optional,
                        }
                      ]
                  )
                  | doc "Customize which updates are allowed"
                  | optional,
                assignees
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc "Assignees to set on pull requests"
                  | optional,
                commit-message
                  | std.contract.any_of
                    [
                      js2n.record.Required [ "prefix" ],
                      js2n.record.Required [ "prefix-development" ],
                      js2n.record.Required [ "include" ]
                    ]
                  | {
                    include
                      | std.enum.TagOrString
                      | [| 'scope |]
                      | doc "Specifies that any prefix is followed by a list of the dependencies updated in the commit."
                      | optional,
                    prefix
                      | js2n.string.MaxLength 50
                      | doc "A prefix for all commit messages. When you specify a prefix for commit messages, GitHub will automatically add a colon between the defined prefix and the commit message provided the defined prefix ends with a letter, number, closing parenthesis, or closing bracket. This means that, for example, if you end the prefix with a whitespace, there will be no colon added between the prefix and the commit message."
                      | optional,
                    prefix-development
                      | js2n.string.MaxLength 50
                      | doc "A separate prefix for all commit messages that update dependencies in the Development dependency group. When you specify a value for this option, the prefix is used only for updates to dependencies in the Production dependency group. This is not supported by all package ecosystems."
                      | optional,
                  }
                  | doc "Dependabot attempts to detect your commit message preferences and use similar patterns. Use this option to specify your preferences explicitly."
                  | optional,
                directories
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc "Locations of package manifests"
                  | optional,
                directory
                  | String
                  | doc "Location of package manifests"
                  | optional,
                groups
                  | js2n.record.MinProperties 1
                  | {
                    _ | std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "dependency-type" ],
                            js2n.record.Required [ "patterns" ],
                            js2n.record.Required [ "exclude-patterns" ],
                            js2n.record.Required [ "update-types" ]
                          ],
                        {
                          applies-to
                            | std.enum.TagOrString
                            | [| 'security-updates, 'version-updates |]
                            | doc "Use to specify a whether the rules in the group apply to version updates or security updates."
                            | optional,
                          dependency-type
                            | std.enum.TagOrString
                            | [| 'production, 'development |]
                            | doc "Specify a dependency type to be included in the group."
                            | optional,
                          exclude-patterns
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array (js2n.string.MinLength 1)
                            | doc "Exclude certain dependencies from the group. If a dependency is excluded from a group, Dependabot will continue to raise single pull requests to update the dependency to its latest version."
                            | optional,
                          patterns
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array (js2n.string.MinLength 1)
                            | doc "Define strings of characters that match with a dependency name (or multiple dependency names) to include those dependencies in the group."
                            | optional,
                          update-types
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array (
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'patch, 'minor, 'major |]
                                ]
                            )
                            | doc "Specify the semantic versioning level to include in the group"
                            | optional,
                        }
                      ]
                  }
                  | doc "Configure groups for dependencies. Each 'groups' property is arbitrary will appear in pull request titles and branch names. For example, the code snippet '{\"groups\": {\"NPM dependencies\": {\"patterns\": [\"*\"]}}}' sets the group name to 'NPM dependencies'."
                  | optional,
                ignore
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "dependency-name" ],
                            js2n.record.Required [ "update-types" ],
                            js2n.record.Required [ "versions" ]
                          ],
                        {
                          dependency-name
                            | String
                            | doc "Use to ignore updates for dependencies with matching names, optionally using * to match zero or more characters."
                            | optional,
                          update-types
                            | refs."definitions.update-types"
                            | Array Dyn
                            | doc "Use to ignore types of updates. You can combine this with 'dependency-name: \"*\"' to ignore particular update-types for all dependencies."
                            | optional,
                          versions
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array String
                            | doc "Use to ignore specific versions or ranges of versions. If you want to define a range, use the standard pattern for the package manager."
                            | optional,
                        }
                      ]
                  )
                  | doc "Ignore certain dependencies or versions"
                  | optional,
                insecure-external-code-execution
                  | refs."definitions.insecure-external-code-execution"
                  | String
                  | doc "Allow or deny code execution in manifest files"
                  | optional,
                labels
                  | js2n.array.MinItems 0
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc "Labels to set on pull requests"
                  | optional,
                milestone
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Associate all pull requests raised for a package manager with a milestone. You need to specify the numeric identifier of the milestone and not its label."
                  | optional,
                open-pull-requests-limit
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Limit number of open pull requests for version updates"
                  | optional,
                package-ecosystem
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.package-ecosystem-values", String ],
                      js2n.string.MinLength 1
                    ]
                  | doc "Package manager to use",
                pull-request-branch-name
                  | {
                    separator
                      | std.enum.TagOrString
                      | [| '"/", '"_", '"-" |]
                      | doc "Change separator for PR branch name",
                  }
                  | doc "Pull request branch name preferences"
                  | optional,
                rebase-strategy
                  | std.enum.TagOrString
                  | [| 'disabled, 'auto |]
                  | doc "Disable automatic rebasing. 'auto' is the default and Dependabot will rebase open pull requests when changes are detected. 'disabled' will disable automatic rebasing."
                  | optional,
                registries
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (js2n.string.MinLength 1)
                        ],
                      std.contract.Equal "*"
                    ]
                  | optional,
                reviewers
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MinLength 1)
                  | doc "Specify individual reviewers or teams of reviewers for all pull requests raised for a package manager. You must use the full team name, including the organization, as if you were @mentioning the team."
                  | optional,
                schedule
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
                            properties = { interval = js2n.Const "cron", },
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
                        js2n.record.Required [ "cronjob", "interval" ],
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "interval" ],
                        Array Dyn
                      ])
                  | {
                    cronjob
                      | String
                      | doc "Specify a valid cron expression for updates"
                      | optional,
                    day
                      | refs."definitions.schedule-day"
                      | String
                      | doc "Specify an alternative day to check for updates"
                      | optional,
                    interval
                      | refs."definitions.schedule-interval"
                      | String
                      | optional,
                    time
                      | js2n.string.Matches "^([01][0-9]|2[0-3]):[0-5][0-9]$"
                      | doc "Specify an alternative time of day to check for updates (format: hh:mm)"
                      | optional,
                    timezone
                      | refs."definitions.timezone"
                      | String
                      | doc "The time zone identifier must be from the Time Zone database maintained by IANA"
                      | optional,
                    ..
                  }
                  | doc "Schedule preferences",
                target-branch
                  | js2n.string.MinLength 1
                  | doc "Specify a different branch for manifest files and for pull requests."
                  | optional,
                vendor
                  | Bool
                  | doc "Tell Dependabot to vendor dependencies when updating them. Don't use this option if you're using 'gomod'."
                  | optional,
                versioning-strategy
                  | refs."definitions.versioning-strategy"
                  | String
                  | doc "How to update manifest version requirements"
                  | optional,
                ..
              }
            ],
      "definitions.update-types" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      '"version-update:semver-patch",
                      '"version-update:semver-minor",
                      '"version-update:semver-major"
                    |]
                  ]
              )
            ],
      "definitions.versioning-strategy" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'widen,
                'lockfile-only,
                'increase-if-necessary,
                'increase,
                'auto
              |]
            ],
    }
    in
  std.contract.Sequence
      [
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
                  properties = { enable-beta-ecosystems = js2n.Const true, },
                  required = { enable-beta-ecosystems = true, },
                },
              Array Dyn
            ]) js2n.Always
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                updates
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | Dyn },
                      Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              package-ecosystem
                                | refs."definitions.package-ecosystem-values"
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]
                      )
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ]),
        {
          enable-beta-ecosystems
            | Bool
            | doc "Enable ecosystems that have beta-level support"
            | optional,
          registries | refs."definitions.registry" | { _ | Dyn } | optional,
          updates
            | Array (
              std.contract.Sequence [ refs."definitions.update", { _ | Dyn } ]
            ),
          version
            | std.number.Integer
            | js2n.Enum [ 2 ]
            | doc "Dependabot configuration files require this key, and its value must be 2",
        }
      ]