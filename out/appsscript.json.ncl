# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.homepageTrigger" =
        {
            enabled
              | Bool
              | doc "Whether or not homepage (non-contextual) cards are enabled in Calendar. Defaults to true."
              | optional,
            runFunction
              | String
              | doc "The name of the function to run when this trigger fires. You must implement this function in your add-on project. This function must build and return an array of Card objects."
              | optional,
            ..
          },
    }
    in
  {
      addOns
        | {
          calendar
            | {
              eventAccess
                | std.enum.TagOrString
                | [| 'READ_WRITE, 'WRITE, 'READ, 'METADATA |]
                | doc "Handler access to Calendar event"
                | optional,
              eventOpenTrigger
                | {
                  runFunction
                    | String
                    | doc "Event handler function"
                    | optional,
                  ..
                }
                | doc "When a Calendar event is opened"
                | optional,
              eventUpdateTrigger
                | {
                  runFunction
                    | String
                    | doc "Event handler function"
                    | optional,
                  ..
                }
                | doc "When a Calendar event is updated"
                | optional,
              homepageTrigger
                | {
                  enabled
                    | Bool
                    | doc "Whether or not homepage (non-contextual) cards are enabled in Calendar. Defaults to true."
                    | optional,
                  runFunction
                    | String
                    | doc "The name of the function to run when this trigger fires. You must implement this function in your add-on project. This function must build and return an array of Card objects."
                    | optional,
                  ..
                }
                | doc "The trigger function specification for creating the add-on homepage in the Calendar host."
                | optional,
              ..
            }
            | doc "Calendar add-on metadata."
            | optional,
          common
            | {
              homepageTrigger
                | {
                  enabled
                    | Bool
                    | doc "Whether or not homepage (non-contextual) cards are enabled. Defaults to true."
                    | optional,
                  runFunctions
                    | String
                    | doc "The name of the function to run"
                    | optional,
                  ..
                }
                | doc "Homepage trigger data"
                | optional,
              layoutProperties
                | {
                  primaryColor
                    | String
                    | doc "The color of toolbar. Defaults to grey (#424242)."
                    | optional,
                  secondaryColor
                    | String
                    | doc "The default color of buttons. Defaults to the primary color (if it is set); otherwise defaults to blue (#2196F3)."
                    | optional,
                  ..
                }
                | doc "Layout properties."
                | optional,
              logoUrl | String | doc "The logo URL.",
              name | String | doc "The add-on name.",
              openLinkUrlPrefixes
                | Array String
                | doc "Link prefixes."
                | optional,
              universalActions
                | Array
                  {
                    label | String | doc "The action label." | optional,
                    openLink | String | doc "The link's URL" | optional,
                    runFunction
                      | String
                      | doc "Required for each defined universal action if openLink is not present. If provided, the name of the Apps Script function that executes when the user selects this action."
                      | optional,
                    ..
                  }
                | doc "Universal add-on actions"
                | optional,
              useLocaleFromApp
                | Bool
                | doc "Use the locale from the host application?"
                | optional,
              ..
            }
            | doc "Common properties between all G Suite add-on types."
            | optional,
          gmail
            | {
              contextualTriggers
                | Array
                  {
                    onTriggerFunction
                      | String
                      | doc "The name of the Apps Script function that executes when this contextual trigger fires (that is, when a message is opened in Gmail). The function specified here must build and return an array of Card objects."
                      | optional,
                    unconditional
                      | { _ | Dyn }
                      | doc "Used to specify that the contextual trigger is fired for all Gmail messages. This is currently the only option, so this should always be an empty object."
                      | optional,
                    ..
                  }
                | doc "Contextual triggers."
                | optional,
              homepageTrigger
                | {
                  enabled
                    | Bool
                    | doc "Whether or not homepage (non-contextual) cards are enabled in Gmail. Defaults to true."
                    | optional,
                  runFunction
                    | String
                    | doc "The name of the function to run when this trigger fires. You must implement this function in your add-on project. This function must build and return an array of Card objects."
                    | optional,
                  ..
                }
                | doc "The trigger function specification for creating the add-on homepage in the Gmail host."
                | optional,
              ..
            }
            | doc "Gmail add-on metadata."
            | optional,
          sheets
            | {
              homepageTrigger | refs."definitions.homepageTrigger" | optional,
              onFileScopeGrantedTrigger
                | { runFunction | String | optional, .. }
                | doc "A configuration for a contextual trigger that fires when the add-on presents the request file scope dialog."
                | optional,
            }
            | doc "Configurations for the Google Workspace Add-on's appearance and behavior within the Sheets host application."
            | optional,
          ..
        }
        | doc "G Suite Add-ons"
        | optional,
      dataStudio
        | {
          addonUrl | String | optional,
          authType
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'OAUTH2, 'USER_PASS, 'KEY, 'NONE |] ]
            )
            | doc "List of AuthTypes supported."
            | optional,
          company | String | doc "Company name for the add-on.",
          companyUrl | String | optional,
          description | String | doc "Short description about the add-on.",
          logoUrl | String | doc "URL for logo image of add-on.",
          name | String | doc "Display name for add-on.",
          privacyPolicyUrl
            | String
            | doc "Url for privacy policy information about the add-on."
            | optional,
          shortDescription
            | String
            | doc "Even shorter description used in gallery cards. Only a maximum of 114 characters will be shown on the card."
            | optional,
          sources
            | Array String
            | doc "List of sources or services that can be accessed with this add-on."
            | optional,
          supportUrl
            | String
            | doc "URL for support information of the add-on.",
          templates
            | { _ | Dyn }
            | doc "Map of template name to report ID."
            | optional,
          termsOfServiceUrl
            | String
            | doc "Url for terms of service information about the add-on."
            | optional,
          ..
        }
        | doc "Data Studio add-on manifest."
        | optional,
      dependencies
        | {
          enabledAdvancedServices
            | Array
              {
                serviceId
                  | String
                  | doc "The identifier of the service that is shown in the API discovery document (e.g., drive).",
                userSymbol
                  | String
                  | doc "The identifier used to refer to this service in the code of the Apps Script project.",
                version
                  | String
                  | doc "The enabled version of the service (e.g., \"v1\").",
                ..
              }
            | doc "The list of advanced services enabled for use by the script project."
            | optional,
          libraries
            | Array
              {
                developmentMode
                  | Bool
                  | doc "If true, version is ignored and the script uses the current library project saved code, even if that code has not been saved to a new version."
                  | optional,
                libraryId
                  | js2n.string.MaxLength 57
                  | js2n.string.MinLength 57
                  | doc "The script ID of the library's script project. You can find a script ID in the library script's URL or in the script editor by selecting **File > Project properties**.",
                userSymbol
                  | String
                  | doc "The label that is used in the script project code to refer to this library.",
                version
                  | String
                  | doc "The version of the library that is used by the script. This is either a version number or stable, meaning the last version created.",
                ..
              }
            | doc "The list of libraries used by the script project."
            | optional,
          ..
        }
        | doc "A list of advanced services and libraries."
        | optional,
      exceptionLogging
        | std.enum.TagOrString
        | [| 'STACKDRIVER, 'NONE |]
        | doc "The location where exceptions are logged."
        | optional,
      executionApi
        | {
          access
            | std.enum.TagOrString
            | [| 'ANYONE_ANONYMOUS, 'ANYONE, 'DOMAIN, 'MYSELF |]
            | doc "Determines who has permission to run the script from the API."
            | optional,
          ..
        }
        | doc "The script project's API executable configuration. Only used if the project is deployed for API execution."
        | optional,
      oauthScopes
        | Array String
        | doc "The definition of authorization scopes used by the script project."
        | optional,
      runtimeVersion
        | std.enum.TagOrString
        | [| 'DEPRECATED_ES5, 'V8, 'STABLE |]
        | doc "Version of the server to use when executing this project."
        | optional,
      sheets
        | {
          macros
            | Array
              {
                defaultShortcut
                  | String
                  | doc "Defines the keyboard shortcut that executes the macro. This must be of the form Ctrl+Alt+Shift+Number, where Number is a single-digit. Macros without shortcuts can only be executed from the Tools > Macros menu.",
                functionName
                  | String
                  | doc "The name of the Apps Script function that executes the macro. By default this matches the menuName for functions automatically created, but this is not a requirement.",
                menuName
                  | String
                  | doc "The name of the macro as it appears in the Google Sheets UI.",
                ..
              }
            | doc "A list of defined macros and their associated properties."
            | optional,
          ..
        }
        | doc "Defines manifest values specific to Sheets."
        | optional,
      timeZone
        | String
        | doc "The script time zone in one of the available ZoneId values such as \"America/Denver\"."
        | optional,
      urlFetchWhitelist
        | Array String
        | doc "A list of HTTPS URL prefixes. If present, any URL endpoint fetched must match one of the prefixes in this list. This can help to protect user data."
        | optional,
      webapp
        | {
          access
            | std.enum.TagOrString
            | [| 'ANYONE_ANONYMOUS, 'ANYONE, 'DOMAIN, 'MYSELF |]
            | doc "The levels of permission for running the web app."
            | optional,
          executeAs
            | std.enum.TagOrString
            | [| 'USER_DEPLOYING, 'USER_ACCESSING |]
            | doc "The identity under which the web app executes."
            | optional,
          ..
        }
        | doc "The script project's web app configuration. Only used if the project is deployed as a web app."
        | optional,
      ..
    }