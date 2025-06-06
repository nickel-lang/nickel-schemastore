# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.fileAssociation" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                contentType
                  | String
                  | doc "Content type of the file with this extension."
                  | optional,
                defaultProgramRegistrationPath
                  | String
                  | doc "The registry path to where this file association should be registered with default program."
                  | optional,
                extension | js2n.string.MinLength 1 | doc "The file extension.",
                isIconOnly
                  | Bool
                  | doc "Indicates whether this file association is used for display icons only."
                  | optional,
                perceivedType
                  | String
                  | doc "Perceived type of the file with this extension."
                  | optional,
                progId
                  | js2n.string.MinLength 1
                  | doc "The matching /progId/id that's associated with this file extension.",
                ..
              },
              Array Dyn
            ],
      "definitions.progIds" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowSilentDefaultTakeOver
                  | Bool
                  | doc "Indicates whether silent default takeover is allowed."
                  | optional,
                alwaysShowExtension
                  | Bool
                  | doc "Indicates if extensions should always be shown in Windows Explorer."
                  | optional,
                appUserModelId
                  | String
                  | doc "App user model ID for taskbar and jump list grouping."
                  | optional,
                arguments
                  | String
                  | doc "Arguments to pass to the executable."
                  | optional,
                clsid | String | doc "CLSID for the progId" | optional,
                dde
                  | Bool
                  | doc "Indicates whether application needs to support DDE."
                  | optional,
                ddeApplication
                  | String
                  | doc "DDE application name."
                  | optional,
                ddeTopic | String | doc "DDE topic name." | optional,
                defaultIconPath
                  | String
                  | doc "Default icon resource DLL path."
                  | optional,
                defaultIconPosition
                  | std.number.Integer
                  | doc "Default icon position."
                  | optional,
                displayName
                  | js2n.string.MinLength 1
                  | doc "The name of progId."
                  | optional,
                iconHandler | String | doc "Icon handler GUID." | optional,
                id | js2n.string.MinLength 1 | doc "The unique identifier.",
                locId
                  | String
                  | doc "Id for localization purpose only."
                  | optional,
                path | String | doc "The path to the executable." | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.urlAssociation" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                defaultProgramRegistrationPath
                  | String
                  | doc "The registry path to where this url association should be registered with default program.",
                displayName
                  | js2n.string.MinLength 1
                  | doc "The name of the association."
                  | optional,
                locId
                  | String
                  | doc "Id for localization purpose only."
                  | optional,
                progId
                  | js2n.string.MinLength 1
                  | doc "The matching /progId/id that's associated with this protocol.",
                protocol
                  | js2n.string.MinLength 1
                  | doc "The URL protocol to associate.",
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      fileAssociations
        | Array refs."definitions.fileAssociation"
        | doc "A list of file associations (protocol handlers)."
        | optional,
      progIds
        | Array refs."definitions.progIds"
        | doc "A list of URL associations (protocol handlers)."
        | optional,
      urlAssociations
        | Array refs."definitions.urlAssociation"
        | doc "A list of URL associations (protocol handlers)."
        | optional,
      ..
    }