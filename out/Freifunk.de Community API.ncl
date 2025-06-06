# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.address" =
        {
            name | String | doc "The name of the place you meet" | optional,
            street
              | String
              | doc "The street address of your meeting place"
              | optional,
            zipcode
              | String
              | doc "The zip code of your meeting place"
              | optional,
          },
      "definitions.city" = String,
      "definitions.country" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ZW,
                'ZM,
                'YE,
                'EH,
                'WF,
                'VI,
                'VG,
                'VN,
                'VE,
                'VU,
                'UZ,
                'UY,
                'US,
                'GB,
                'AE,
                'UA,
                'UG,
                'TV,
                'TC,
                'TM,
                'TR,
                'TN,
                'TA,
                'TT,
                'TO,
                'TK,
                'TG,
                'TL,
                'TH,
                'TZ,
                'TJ,
                'TW,
                'SY,
                'CH,
                'SE,
                'SZ,
                'SJ,
                'SR,
                'SD,
                'LK,
                'ES,
                'SU,
                'GS,
                'ZA,
                'SO,
                'SB,
                'SI,
                'SK,
                'SG,
                'SL,
                'SC,
                'CS,
                'SN,
                'NT,
                'SA,
                'ST,
                'SM,
                'WS,
                'VC,
                'PM,
                'LC,
                'KN,
                'SH,
                'RW,
                'RU,
                'RO,
                'RE,
                'QA,
                'PR,
                'PT,
                'PL,
                'PN,
                'PH,
                'PE,
                'PY,
                'PG,
                'PA,
                'PS,
                'PW,
                'PK,
                'OM,
                'NO,
                'MP,
                'NF,
                'NU,
                'NG,
                'NE,
                'NI,
                'NZ,
                'NC,
                'AN,
                'NL,
                'NP,
                'NR,
                'NA,
                'MM,
                'MZ,
                'MA,
                'MS,
                'ME,
                'MN,
                'MC,
                'MD,
                'FM,
                'MX,
                'YT,
                'MU,
                'MR,
                'MQ,
                'MH,
                'MT,
                'ML,
                'MV,
                'MY,
                'MW,
                'MG,
                'MK,
                'MO,
                'LU,
                'LT,
                'LI,
                'LY,
                'LR,
                'LS,
                'LB,
                'LV,
                'LA,
                'KG,
                'KW,
                'KR,
                'KP,
                'KI,
                'KE,
                'KZ,
                'JO,
                'JE,
                'JP,
                'JM,
                'IT,
                'IL,
                'IM,
                'IE,
                'IQ,
                'IR,
                'ID,
                'IN,
                'IS,
                'HU,
                'HK,
                'HN,
                'VA,
                'HM,
                'HT,
                'GY,
                'GW,
                'GN,
                'GG,
                'GT,
                'GU,
                'GP,
                'GD,
                'GL,
                'GR,
                'GI,
                'GH,
                'DE,
                'GE,
                'GM,
                'GA,
                'TF,
                'PF,
                'GF,
                'FR,
                'FI,
                'FJ,
                'FO,
                'FK,
                'EU,
                'ET,
                'EE,
                'ER,
                'GQ,
                'SV,
                'EG,
                'EC,
                'DO,
                'DM,
                'DJ,
                'DG,
                'DK,
                'CZ,
                'CY,
                'CU,
                'HR,
                'CI,
                'CR,
                'CK,
                'CD,
                'CG,
                'KM,
                'CO,
                'CC,
                'CX,
                'CN,
                'CL,
                'TD,
                'CF,
                'KY,
                'CV,
                'IC,
                'CA,
                'CM,
                'KH,
                'BI,
                'BF,
                'BG,
                'BN,
                'IO,
                'BR,
                'BV,
                'BW,
                'BA,
                'BO,
                'BT,
                'BM,
                'BJ,
                'BZ,
                'BE,
                'BY,
                'BB,
                'BD,
                'BH,
                'BS,
                'AZ,
                'AT,
                'AU,
                'AC,
                'AW,
                'AM,
                'AR,
                'AG,
                'AQ,
                'AI,
                'AO,
                'AD,
                'AS,
                'DZ,
                'AL,
                'AX,
                'AF,
                '""
              |]
            ],
      "definitions.email" =
        js2n.string.Matches
            "^[A-Za-z0-9äöüÄÖUß_\\-\\.]+@[A-Za-z0-9äöüÄÖUß_\\-\\.]+\\.[A-Za-z]{2,}$",
      "definitions.geoCode" =
        {
            lat | Number | doc "Lattitude of your city in decimal degrees",
            lon | Number | doc "Longitude of your city in decimal degrees",
          },
      "definitions.phone" = String,
      "definitions.url" =
        js2n.string.Matches "^(http|https)://[A-Za-z0-9ÄÖÜäöüß\\-_\\./]+",
    }
    in
  {
      api
        | std.enum.TagOrString
        | [|
          '"0.5.2",
          '"0.5.1",
          '"0.5.0",
          '"0.4.16",
          '"0.4.15",
          '"0.4.14",
          '"0.4.13",
          '"0.4.12",
          '"0.4.11",
          '"0.4.10",
          '"0.4.9",
          '"0.4.8",
          '"0.4.7",
          '"0.4.6",
          '"0.4.5",
          '"0.4.4",
          '"0.4.3",
          '"0.4.2",
          '"0.4.1",
          '"0.4.0",
          '"0.3.2",
          '"0.3.1",
          '"0.3.0",
          '"0.2.1",
          '"0.2.0",
          '"0.1"
        |]
        | doc "The Freifunk Community API version you use"
        | optional,
      contact
        | js2n.record.MinProperties 1
        | {
          email
            | refs."definitions.email"
            | doc "Email address to which other people can contact your community (user@domain.com)"
            | optional,
          facebook
            | js2n.string.Matches
              "^(http|https)://([a-z\\-]*\\.|)facebook\\.com/[A-Za-z0-9ÄÖÜäöüß\\-_\\.]+"
            | doc "URL to your community's facebook account (https://facebook.com/...)"
            | optional,
          googleplus
            | js2n.string.Matches
              "^(http|https)://plus\\.google\\.com/[A-Za-z0-9ÄÖÜäöüß\\+\\-\\./_]+"
            | doc "URL to your community's g+ account (https://plus.google.com/...)"
            | optional,
          identica
            | js2n.string.Matches
              "^(http|https)://([a-z\\-]*\\.|)identi\\.ca/[A-Za-z0-9ÄÖÜäöüß\\-_\\.]+"
            | doc "URL to your community's identica account (https://identi.ca/...)"
            | optional,
          irc
            | js2n.string.Matches "^(irc|ircs)://.*"
            | doc "Your community's ICR channel; starts with irc://"
            | optional,
          jabber
            | js2n.string.Matches
              "^[A-Za-z0-9äöüÄÖUß_\\-\\.]+@[A-Za-z0-9äöüÄÖUß_\\-\\.]+\\.[A-Za-z]{2,}(\\?join){0,1}$"
            | doc "A jabber account someone reads (account@jabberserver.tld)"
            | optional,
          mastodon
            | refs."definitions.url"
            | doc "URL to your community's mastodon profile (https://...)"
            | optional,
          matrix
            | js2n.string.Matches "^https://matrix\\.to/#/"
            | doc "URL to your community's matrix channel (https://matrix.to/#/!...)"
            | optional,
          ml
            | js2n.string.Matches
              "^([A-Za-z0-9äöüÄÖUß_\\-\\.]+@[A-Za-z0-9äöüÄÖUß_\\-\\.]+\\.[A-Za-z]{2,}|(http|https)://[A-Za-z0-9ÄÖÜäöüß\\-_\\./]+)$"
            | doc "The email address (user@domain.com) of your mailing list or a link to the mailinglist info page (http{s}://...)"
            | optional,
          phone
            | refs."definitions.phone"
            | doc "If your community has a phone number (e.g. +49 1234 567890 based on the E.123 notation)"
            | optional,
          twitter
            | js2n.string.Matches "^@[A-Za-z0-9_\\-]{1,15}"
            | doc "Your community's Twitter name (starts with @)"
            | optional,
          webform
            | refs."definitions.url"
            | doc "URL to your community's contact form (http{s}://...)"
            | optional,
        },
      feeds
        | Array
          {
            category
              | std.enum.TagOrString
              | [| '"", 'others, 'wiki, 'podcast, 'ics, 'forum, 'blog |]
              | doc "Category of the feed like blog entries, calendars, forum messages, wiki articles, ..."
              | optional,
            name | String | doc "Name of the feed" | optional,
            type
              | String
              | doc "Type of the feed like RSS, Atom, XML"
              | optional,
            url | refs."definitions.url" | doc "URL of the feed" | optional,
          }
        | doc "Feeds you provide your community"
        | optional,
      location
        | {
          additionalLocations
            | Array
              {
                address | refs."definitions.address" | optional,
                city | refs."definitions.city",
                country | refs."definitions.country" | optional,
                geoCode | refs."definitions.geoCode",
              }
            | doc "Add some more locations where your community is active."
            | optional,
          address | refs."definitions.address" | optional,
          city | refs."definitions.city",
          country | refs."definitions.country" | optional,
          geoCode | refs."definitions.geoCode",
        }
        | doc "Position data such as a postal address or geographic coordinates",
      metacommunity
        | String
        | doc "The name of your metacommunity, if your local community belongs to a bigger one"
        | optional,
      name | String | doc "The name of your community",
      nodeMaps
        | Array
          {
            interval
              | String
              | doc "How often the map will be refreshed"
              | optional,
            mapType
              | std.enum.TagOrString
              | [| '"list/status", 'structural, 'geographical, '"" |]
              | doc ""
              | optional,
            technicalType
              | std.enum.TagOrString
              | [|
                'hopglass,
                'meshviewer,
                'nodelist,
                'kml,
                'nodewatcher,
                'libremap,
                'netmon,
                'openwifimap,
                'olsr-dot,
                'ffsomething,
                'ffmap,
                '""
              |]
              | doc "The kind of map is used"
              | optional,
            url
              | refs."definitions.url"
              | doc "The URL where the map is located"
              | optional,
          }
        | doc "Maps of nodes or topology your community provides"
        | optional,
      privacy
        | {
          policyurl
            | refs."definitions.url"
            | doc "URL to your privacy policy description"
            | optional,
        }
        | optional,
      services
        | Array
          {
            externalUri
              | String
              | doc "URI to use your service from the internet"
              | optional,
            internalUri
              | String
              | doc "URI to use your service from Freifunk or icvpn-networks"
              | optional,
            serviceDescription
              | String
              | doc "Describe your service"
              | optional,
            serviceName
              | String
              | doc "Name of your service (e.g. jabber...)"
              | optional,
          }
        | doc "Services Provided by your community"
        | optional,
      socialprojects
        | {
          contact
            | refs."definitions.email"
            | doc "Please provide an email address to contact you on refugees and social projects"
            | optional,
          number
            | std.number.Integer
            | doc "Number of projects supported by your Community"
            | optional,
          website
            | refs."definitions.url"
            | doc "A link to a web site where people can find an overview over your projects"
            | optional,
        }
        | optional,
      state
        | {
          description
            | String
            | doc "Describe your community in a few lines"
            | optional,
          focus
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"Free internet access",
                    '"Local services and content",
                    '"Social Community Building",
                    '"Public Free Wifi",
                    '"infrastructure/backbone"
                  |]
                ]
            )
            | doc "What's the focus of your local community?"
            | optional,
          lastchange
            | String
            | doc "At what ISO 8601 timestamp has your community status lastly changed?",
          message
            | String
            | doc "A free-form string something like 'open for public', 'members only' or whatever you want it to be)"
            | optional,
          nodes
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of active nodes. This field is predestined to be updated regularly, please see sample solutions for <a href=\"https://github.com/Freifunk-Mainz/changeffapi\" target=\"_blank\">Gluon</a> or <a href=\"https://github.com/freifunk/common.api.freifunk.net/blob/master/contrib/ffapi-update-nodes.py\" target=\"_blank\">OLSR</a>"
            | optional,
        }
        | doc "A collection of status-related data. Actual open/closed status, icons, last change timestamp etc.",
      support
        | {
          club
            | {
              board
                | Array String
                | doc "Who are the board members of the club?"
                | optional,
              city | refs."definitions.city" | optional,
              email
                | refs."definitions.email"
                | doc "Email address to contact the club (user@domain.com)"
                | optional,
              name | String | doc "Name of the Club" | optional,
              street | String | doc "Address - Street" | optional,
              url
                | refs."definitions.url"
                | doc "The club's website (http{s}://...)"
                | optional,
              zip | String | doc "Address - ZIP" | optional,
            }
            | optional,
          donations
            | {
              bankaccount
                | {
                  BIC | String | optional,
                  IBAN | String | optional,
                  usage
                    | String
                    | doc "Please use this string as transfer-purpose to define a special usage of your donation."
                    | optional,
                }
                | optional,
              campaigns
                | Array
                  {
                    projectid
                      | String
                      | doc "ID of your project, Betterplace-IDs are multiple digits and can be found within the URL"
                      | optional,
                    provider
                      | std.enum.TagOrString
                      | [| 'boost, 'betterplace, '"" |]
                      | doc "Where do you host your donations?"
                      | optional,
                  }
                | optional,
            }
            | optional,
        }
        | optional,
      techDetails
        | {
          dns
            | Array
              {
                domainname
                  | js2n.string.Matches "^[A-Za-z0-9äöüÄÖÜß\\.\\-\\_]{2,}$"
                  | doc "The domain name (e.g. ffhh, ffol)"
                  | optional,
                nameserver
                  | Array (js2n.string.Matches "^[A-Za-z0-9äöüÄÖÜß_\\-\\.:]*$")
                  | doc "Nameservers servings zones of your domain"
                  | optional,
              }
            | doc "DNS servers for domains used by your community"
            | optional,
          firmware
            | {
              docs
                | refs."definitions.url"
                | doc "Link to your firmware docs"
                | optional,
              name | String | doc "Name of your firmware" | optional,
              orgrestrictions
                | String
                | doc "Are there any organizational restrictions when using/installing your firmware?"
                | optional,
              registrationurl
                | refs."definitions.url"
                | doc "link to your website to request a new VPN key"
                | optional,
              techrestrictions
                | String
                | doc "Are there any technical restrictions like hardware?"
                | optional,
              url
                | refs."definitions.url"
                | doc "Link to your firmware images"
                | optional,
              vpnaccess
                | std.enum.TagOrString
                | [| '"else", 'webform, 'mail, 'fwimage, 'automatic, '"" |]
                | doc "How to access your VPN services"
                | optional,
            }
            | optional,
          legals
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'institutions,
                    'anonymizer,
                    'termsconditions,
                    'splashpage,
                    'p2pblock,
                    'zappscript,
                    'vpninternational,
                    'vpnnational,
                    'nothing
                  |]
                ]
            )
            | doc "What do you use to handle legal issues, e.g. the German Störerhaftung or restrictions in your country?"
            | optional,
          networks
            | {
              ipv4
                | Array
                  {
                    network
                      | js2n.string.Matches
                        "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(\\d|[1-2]\\d|3[0-2]))$"
                      | doc "IPv4 network name (e.g. 10.w.x.y/z) in CIDR notation"
                      | optional,
                  }
                | doc "IPv4 networks used by your community"
                | optional,
              ipv6
                | Array
                  {
                    network
                      | js2n.string.Matches
                        "^\\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:)))(%.+)?\\s*(\\/(\\d|\\d\\d|1[0-1]\\d|12[0-8]))$"
                      | doc "IPv6 network network (e.g.2620:0:2d0:200::7/32) in CIDR notation"
                      | optional,
                  }
                | doc "IPv6 networks used by your community"
                | optional,
            }
            | doc "Networks used by your community"
            | optional,
          routing
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'OLSRv2,
                    'OLSR,
                    'cjdns,
                    'bmxd,
                    'bmx6,
                    'batman-adv,
                    'Babel,
                    '"802.11s"
                  |]
                ]
            )
            | doc "Routing protocols used within your community"
            | optional,
          updatemode
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'autoupdate, 'manual, 'none |] ]
            )
            | doc "How do you deploy firmware updates?"
            | optional,
        }
        | doc "Technical details of your community's Freifunk implementation",
      timeline
        | Array
          {
            description
              | String
              | doc "Description of your lifetime event"
              | optional,
            timestamp
              | js2n.string.Matches
                "^([0-9]{4})(?:-?W([0-9]+)(?:-?([0-9]+)D?)?|(?:-([0-9]+))?-([0-9]+))(?:[T ]([0-9]+):([0-9]+)(?::([0-9]+)(?:\\.([0-9]+))?)?)?(?:Z(-?[0-9]*))?"
              | doc "ISO 8601 timestamp of the event's date (format yyyy-mm-dd)"
              | optional,
            url
              | refs."definitions.url"
              | doc "URL to details of this timeline-element"
              | optional,
          }
        | doc "These are lifetime events something like date of birth (and rebirth :-) of your community or other important milestones"
        | optional,
      url | refs."definitions.url" | doc "The main website (http{s}://...)",
    }