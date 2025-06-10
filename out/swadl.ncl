# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.active" = std.contract.any_of [ Bool, String ],
      "definitions.activity-completed-event" =
        {
            activity-completed
              | refs."definitions.activity-completed-event-inner"
              | { _ | Dyn }
              | doc "Generated when the given activity is completed. Note this is not a Datafeed real-time event.",
            "if" | js2n.string.Matches "^\\$\\{.*\\}$" | optional,
            ..
          },
      "definitions.activity-completed-event-inner" =
        {
            activity-id
              | refs."definitions.id"
              | String
              | doc "The completed (without errors) activity triggering this event.",
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            ..
          },
      "definitions.activity-expired-event" =
        {
            activity-expired
              | refs."definitions.activity-expired-event-inner"
              | { _ | Dyn }
              | doc "Generated when the given activity event timeout has expired. Note this is not a Datafeed real-time event.",
            ..
          },
      "definitions.activity-expired-event-inner" =
        {
            activity-id
              | refs."definitions.id"
              | String
              | doc "The expiring activity triggering this event.",
            ..
          },
      "definitions.activity-failed-event" =
        {
            activity-failed
              | refs."definitions.activity-failed-event-inner"
              | { _ | Dyn }
              | doc "Generated when the given activity has failed. Note this is not a Datafeed real-time event.",
            ..
          },
      "definitions.activity-failed-event-inner" =
        {
            activity-id
              | refs."definitions.id"
              | String
              | doc "The failing activity triggering this event.",
            ..
          },
      "definitions.add-group-member-inner" =
        {
            group-id | refs."definitions.group-id",
            members
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.group-member", { _ | Dyn } ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | Array Dyn
              | optional,
            ..
          },
      "definitions.add-room-member-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream id where to add user(s).",
            user-ids
              | refs."definitions.user-ids-inner"
              | doc "User ids to add to the room.",
            ..
          },
      "definitions.all-of-event" =
        {
            all-of
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.form-replied-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.activity-completed-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.activity-failed-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.message-received-event",
                        { _ | Dyn }
                      ],
                    refs."definitions.request-received-event",
                    std.contract.Sequence
                      [
                        refs."definitions.message-suppressed-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.post-shared-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.im-created-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.room-created-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.room-updated-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-deactivated-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-reactivated-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-member-promoted-to-owner-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-member-demoted-from-owner-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.user-joined-room-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.user-left-room-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.user-requested-join-room-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.connection-requested-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.connection-accepted-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.timer-fired-event", { _ | Dyn } ]
                  ]
              )
              | doc "Used to receive all listed events.",
            ..
          },
      "definitions.at" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                at
                  | String
                  | doc "ISO 8601 date representing a point in time when the current activity should be executed.",
                ..
              },
              Array Dyn
            ],
      "definitions.attachment" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.attachment-message", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.attachment-file", { _ | Dyn } ]
                ],
              { _ | Dyn }
            ],
      "definitions.attachment-file" =
        {
            content-path
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Path to the file to be attached to the message. The path is relative to the workflows folder.",
            ..
          },
      "definitions.attachment-message" =
        {
            attachment-id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Attachment id to forward. If not set, all attachments in the provided message are forwarded. Both url safe and base64 encoded urls are accepted."
              | optional,
            message-id
              | refs."definitions.message-id-inner"
              | doc "Message id having the attachment to forward. Both url safe and base64 encoded urls are accepted.",
            ..
          },
      "definitions.basic-activity-inner" =
        {
            "else"
              | { _ | Dyn }
              | doc "Default execution of the activity when if conditions are used for previous activities."
              | optional,
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Activity's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed.",
            "if"
              | String
              | doc "Conditional execution of the activity based on a boolean expression."
              | optional,
            on | refs."definitions.on" | { _ | Dyn } | optional,
            ..
          },
      "definitions.business" =
        {
            asset-classes
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              '"Corporate Bonds",
                              'Currencies,
                              '"Municipal Bonds",
                              'Commodities,
                              '"Prime Brokerage",
                              '"Government Bonds",
                              '"Fixed Income",
                              '"Securities Lending",
                              '"Cash Equities",
                              'Equities
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's asset classes (one or more)."
              | optional,
            company-name
              | String
              | doc m%"
                The user's company name.
                If not specified, it is set with the default company name.
              "%
              | optional,
            department | String | doc "The user's department." | optional,
            division | String | doc "The user's division." | optional,
            functions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              '"Post Trade Management",
                              'Settlements,
                              '"Regulatory Outreach",
                              '"Trade Management",
                              'Allocation,
                              '"Liquidity Management",
                              '"Middle Office",
                              '"Claims Processing",
                              'Matching,
                              'Margin,
                              'Pre-Matching,
                              '"Trade Processing",
                              'Confirmation,
                              'Collateral
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's job functions (one or more)."
              | optional,
            industries
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'Services,
                              '"Consumer Cyclicals",
                              'Conglomerates,
                              '"Energy & Utilities",
                              'Financials,
                              '"Basic Materials",
                              '"Real Estate",
                              'Technology,
                              'Transportation,
                              '"Consumer Non-Cyclicals",
                              'Healthcare
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's job industries (one or more)."
              | optional,
            instruments
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'Equities, '"Fixed Income", 'Securities |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's instruments (one or more)."
              | optional,
            job-function
              | std.enum.TagOrString
              | [|
                'Trader,
                'Strategist,
                'Sales,
                '"Research Analyst",
                '"Project Manager",
                '"Portfolio Manager",
                'Economist,
                'Director,
                'Developer,
                '"Corporate Access",
                '"Business Development Executive",
                'Other,
                'Analyst
              |]
              | doc "The user's job function."
              | optional,
            location | String | doc "The user's location." | optional,
            market-coverages
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'LATAM, 'APAC, 'NA, 'EMEA |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's market coverage (one or more)."
              | optional,
            responsibilities
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'Escalation, 'BAU |] ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The user's responsibilities (one or more)."
              | optional,
            title | String | doc "The user's title." | optional,
          },
      "definitions.connection-accepted-event" =
        {
            connection-accepted
              | refs."definitions.connection-accepted-event-inner"
              | { _ | Dyn }
              | doc "Generated when a connection request is accepted, either sent by the workflow bot and accepted by another user or sent by another user and accepted by the workflow bot.",
            ..
          },
      "definitions.connection-accepted-event-inner" = { _ | Dyn },
      "definitions.connection-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            user-id | refs."definitions.user-id",
            ..
          },
      "definitions.connection-requested-event" =
        {
            connection-requested
              | refs."definitions.connection-requested-event-inner"
              | { _ | Dyn }
              | doc "Generated when a connection request is sent, either by the workflow bot to another user or to the workflow bot by another user.",
            ..
          },
      "definitions.connection-requested-event-inner" = { _ | Dyn },
      "definitions.content-inner" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"<mention uid='${event.initiator.user.userId}'/>",
                    '"<mention uid='${ACTIVITY_ID.outputs.user.userSystemInfo.id}'/>",
                    '"${event.args.NAME}",
                    '"${text(ACTIVITY_ID.outputs.message.message)}",
                    '"${variables.VARIABLE_NAME}"
                  |]
                ],
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
                          js2n.record.Required [ "template" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "template-path" ],
                          Array Dyn
                        ]
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            template = js2n.string.MinLength 1,
                            template-path = js2n.string.MinLength 1,
                          },
                      required = {},
                    }
                ],
              js2n.string.MinLength 0
            ],
      "definitions.copy-protected" = std.contract.any_of [ Bool, String ],
      "definitions.create-group-inner" =
        {
            members
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.group-member", { _ | Dyn } ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | Array Dyn
              | optional,
            name | js2n.string.MinLength 1 | doc "Group's name." | optional,
            owner | refs."definitions.group-owner" | { _ | Dyn } | optional,
            profile | refs."definitions.group-profile" | { _ | Dyn } | optional,
            referrer
              | js2n.string.MinLength 1
              | doc "Symphony, referring company name, referring channel partner name."
              | optional,
            sub-type
              | std.enum.TagOrString
              | [| 'CHANNEL, 'COMMUNITY |]
              | doc "The type of the company new groupType."
              | optional,
            type
              | js2n.string.MinLength 1
              | doc "Group type identifier (for instance SDL)."
              | optional,
            ..
          },
      "definitions.create-room-inner" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "room-description", "room-name" ],
                  js2n.record.Required [ "user-ids" ]
                ],
              {
                copy-protected
                  | refs."definitions.copy-protected"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                cross-pod
                  | refs."definitions.cross-pod"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                discoverable
                  | refs."definitions.discoverable"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                keywords | refs."definitions.keywords" | optional,
                members-can-invite
                  | refs."definitions.members-can-invite"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                multilateral-room
                  | refs."definitions.multilateral-room"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                obo
                  | refs."definitions.obo-inner"
                  | { _ | Dyn }
                  | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                  | optional,
                public
                  | refs."definitions.public"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                read-only
                  | refs."definitions.read-only"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                room-description
                  | refs."definitions.room-description"
                  | String
                  | optional,
                room-name | refs."definitions.room-name" | String | optional,
                sub-type | refs."definitions.sub-type" | String | optional,
                user-ids | refs."definitions.user-ids-inner" | optional,
                view-history
                  | refs."definitions.view-history"
                  | std.contract.any_of [ Bool, String ]
                  | optional,
                ..
              }
            ],
      "definitions.create-system-user-inner" =
        {
            business
              | refs."definitions.business"
              | { _ | Dyn }
              | doc "User's business information."
              | optional,
            display-name
              | refs."definitions.name"
              | String
              | doc "User's display name."
              | optional,
            email
              | refs."definitions.email"
              | String
              | doc "Email address, must be unique"
              | optional,
            entitlements
              | refs."definitions.entitlements-inner"
              | doc "User entitlements."
              | optional,
            keys
              | {
                current | refs."definitions.key-inner" | { _ | Dyn } | optional,
                previous
                  | refs."definitions.key-inner"
                  | { _ | Dyn }
                  | optional,
                ..
              }
              | doc "For SYSTEM users, to set up the RSA keys for authentication."
              | optional,
            roles
              | refs."definitions.roles-inner"
              | doc m%"
                The roles object consists of the following possibilities:
                For end-user accounts: INDIVIDUAL, ADMINISTRATOR, SUPER_ADMINISTRATOR, L1_SUPPORT, L2_SUPPORT, COMPLIANCE_OFFICER, SUPER_COMPLIANCE_OFFICER
                For service accounts: INDIVIDUAL, USER_PROVISIONING, SCOPE_MANAGEMENT, CONTENT_MANAGEMENT, MALWARE_SCAN_MANAGER, MALWARE_SCAN_STATE_USER, AUDIT_TRAIL_MANAGEMENT
              "%
              | optional,
            status
              | std.enum.TagOrString
              | [| 'DISABLED, 'ENABLED |]
              | doc "User status: ENABLED or DISABLED."
              | optional,
            username
              | refs."definitions.name"
              | String
              | doc "User's username."
              | optional,
            ..
          },
      "definitions.create-user-inner" =
        {
            business
              | refs."definitions.business"
              | { _ | Dyn }
              | doc "User's business information."
              | optional,
            contact
              | {
                mobile-phone-number
                  | refs."definitions.phoneNumber"
                  | String
                  | doc "User's mobile phone number."
                  | optional,
                sms-number
                  | refs."definitions.phoneNumber"
                  | String
                  | doc "User's sms phone number."
                  | optional,
                two-factor-auth-number
                  | refs."definitions.phoneNumber"
                  | String
                  | doc "User's two factor auth number."
                  | optional,
                work-phone-number
                  | refs."definitions.phoneNumber"
                  | String
                  | doc "User's work phone number."
                  | optional,
              }
              | doc "Contact information"
              | optional,
            display-name
              | refs."definitions.name"
              | String
              | doc "User's display name."
              | optional,
            email
              | refs."definitions.email"
              | String
              | doc "Email address, must be unique."
              | optional,
            entitlements
              | refs."definitions.entitlements-inner"
              | doc "User entitlements."
              | optional,
            firstname
              | refs."definitions.name"
              | String
              | doc "User's first name."
              | optional,
            lastname
              | refs."definitions.name"
              | String
              | doc "User's last name."
              | optional,
            password
              | {
                hashed-km-password
                  | js2n.string.MinLength 1
                  | doc "A base64-encoded string. The hashed password to be used for authenticating to the key manager."
                  | optional,
                hashed-km-salt
                  | js2n.string.MinLength 1
                  | doc "A base64-encoded string. The salt used for hashing the khPassword."
                  | optional,
                hashed-password
                  | js2n.string.MinLength 1
                  | doc "A base64-encoded string. The hashed password. This is the hashed version of the password the user would use to login.",
                hashed-salt
                  | js2n.string.MinLength 1
                  | doc "A base64-encoded string. The salt used for hashing the hPassword.",
              }
              | doc "User's password. The password object is optional for end-user accounts (NORMAL). For example, if your organization utilizes SSO, you may not want to specify the password."
              | optional,
            recommended-language
              | String
              | doc "The recommended language. As an ISO 639-1 code."
              | optional,
            roles
              | refs."definitions.roles-inner"
              | doc m%"
                The roles object consists of the following possibilities:
                For end-user accounts: INDIVIDUAL, ADMINISTRATOR, SUPER_ADMINISTRATOR, L1_SUPPORT, L2_SUPPORT, COMPLIANCE_OFFICER, SUPER_COMPLIANCE_OFFICER
                For service accounts: INDIVIDUAL, USER_PROVISIONING, SCOPE_MANAGEMENT, CONTENT_MANAGEMENT, MALWARE_SCAN_MANAGER, MALWARE_SCAN_STATE_USER, AUDIT_TRAIL_MANAGEMENT
              "%
              | optional,
            status
              | std.enum.TagOrString
              | [| 'DISABLED, 'ENABLED |]
              | doc "User status: ENABLED or DISABLED."
              | optional,
            username
              | refs."definitions.name"
              | String
              | doc "Unique identifier for the user."
              | optional,
            ..
          },
      "definitions.cross-pod" = std.contract.any_of [ Bool, String ],
      "definitions.demote-room-owner-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream id where to demote user.",
            user-ids
              | refs."definitions.user-ids-inner"
              | doc "User ids to demote in the room.",
            ..
          },
      "definitions.discoverable" = std.contract.any_of [ Bool, String ],
      "definitions.email" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${ACTIVITY_ID.outputs.user.userAttributes.emailAddress}",
                    '"${variables.VARIABLE_NAME}"
                  |]
                ],
              js2n.string.Matches
                "([$][{].+})|(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
            ],
      "definitions.entitlements-inner" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        canCreateDatahose =
                          std.contract.any_of [ Bool, String ],
                        canCreateMultiLateralRoom =
                          std.contract.any_of [ Bool, String ],
                        canCreatePublicRoom =
                          std.contract.any_of [ Bool, String ],
                        canCreatePushedSignals =
                          std.contract.any_of [ Bool, String ],
                        canIntegrateEmail =
                          std.contract.any_of [ Bool, String ],
                        canJoinMultiLateralRoom =
                          std.contract.any_of [ Bool, String ],
                        canManageSignalSubscription =
                          std.contract.any_of [ Bool, String ],
                        canProjectInternalScreenShare =
                          std.contract.any_of [ Bool, String ],
                        canProjectInternalScreenShareMobile =
                          std.contract.any_of [ Bool, String ],
                        canReadDatahose = std.contract.any_of [ Bool, String ],
                        canShareFilesExternally =
                          std.contract.any_of [ Bool, String ],
                        canSuppressMessage =
                          std.contract.any_of [ Bool, String ],
                        canSwitchToClient20 =
                          std.contract.any_of [ Bool, String ],
                        canUpdateAvatar = std.contract.any_of [ Bool, String ],
                        canUpdateRoomHistoryProperty =
                          std.contract.any_of [ Bool, String ],
                        canUseCompactMode =
                          std.contract.any_of [ Bool, String ],
                        canUseEncryptAPI = std.contract.any_of [ Bool, String ],
                        canUseFirehose = std.contract.any_of [ Bool, String ],
                        canUseInternalAudio =
                          std.contract.any_of [ Bool, String ],
                        canUseInternalAudioMobile =
                          std.contract.any_of [ Bool, String ],
                        canUseInternalVideo =
                          std.contract.any_of [ Bool, String ],
                        canUseInternalVideoMobile =
                          std.contract.any_of [ Bool, String ],
                        canViewInternalScreenShare =
                          std.contract.any_of [ Bool, String ],
                        canViewInternalScreenShareMobile =
                          std.contract.any_of [ Bool, String ],
                        delegatesEnabled = std.contract.any_of [ Bool, String ],
                        enableSwiftSearch =
                          std.contract.any_of [ Bool, String ],
                        isExternalIMEnabled =
                          std.contract.any_of [ Bool, String ],
                        isExternalRoomEnabled =
                          std.contract.any_of [ Bool, String ],
                        mustBeRecorded = std.contract.any_of [ Bool, String ],
                        postReadEnabled = std.contract.any_of [ Bool, String ],
                        postWriteEnabled = std.contract.any_of [ Bool, String ],
                        sdaDevtoolsEnabled =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsFullScreen =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsGeoLocation =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsMedia =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsMidiSysex =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsNotifications =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsOpenExternalApp =
                          std.contract.any_of [ Bool, String ],
                        sdaPermissionsPointerLock =
                          std.contract.any_of [ Bool, String ],
                        sendFilesEnabled = std.contract.any_of [ Bool, String ],
                      },
                  required = {},
                },
              js2n.string.MinLength 1,
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ]
            ],
      "definitions.execute-request-inner" =
        {
            body | std.contract.any_of [ { _ | Dyn }, String ] | optional,
            encode-query-params
              | std.contract.any_of [ Bool, String ]
              | doc "If enabled, the query parameters will be encoded in application/x-www-form-urlencoded"
              | optional,
            headers | { _ | Dyn } | doc "HTTP request headers" | optional,
            method
              | std.enum.TagOrString
              | [| 'OPTIONS, 'HEAD, 'PATCH, 'DELETE, 'PUT, 'POST, 'GET |]
              | doc "HTTP method to perform"
              | optional,
            url
              | js2n.string.MinLength 1
              | doc "Contains the host and the path to be targeted",
            ..
          },
      "definitions.execute-script-inner" =
        {
            script
              | String
              | doc "Script to execute (only Groovy is supported)",
            ..
          },
      "definitions.form-replied-event" =
        {
            form-replied
              | refs."definitions.form-replied-event-inner"
              | { _ | Dyn }
              | doc "Generated when a user replies to a bot message that contains an interactive form with UX components such as text fields, radio buttons, checkboxes, person selectors and more.",
            ..
          },
      "definitions.form-replied-event-inner" =
        {
            exclusive
              | Bool
              | doc "True if only one reply is expected to the form. Default is false"
              | optional,
            form-id
              | String
              | doc "Form's id. The id should be the same as activity's one that sent the form.",
            ..
          },
      "definitions.get-attachment-inner" =
        {
            attachment-id | refs."definitions.single-attachment" | String,
            message-id | refs."definitions.message-id-inner",
            ..
          },
      "definitions.get-connections-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            status
              | std.enum.TagOrString
              | [|
                'ALL,
                'REJECTED,
                'ACCEPTED,
                'PENDING_OUTGOING,
                'PENDING_INCOMING
              |]
              | optional,
            user-ids
              | refs."definitions.user-ids-inner"
              | doc "List of user ids that this activity results will be restricted to their connections."
              | optional,
            ..
          },
      "definitions.get-group-inner" =
        { group-id | refs."definitions.group-id", .. },
      "definitions.get-groups-inner" =
        {
            after
              | js2n.string.MinLength 1
              | doc "Cursor that points to the end of the current page of data. If not present, the current page is the last page."
              | optional,
            before
              | js2n.string.MinLength 1
              | doc "NOT SUPPORTED YET, currently ignored. Cursor that points to the start of the current page of data. If not present, the current page is the first page."
              | optional,
            limit
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  js2n.string.MinLength 1
                ]
              | doc "Numbers of items to return."
              | optional,
            sort-order | std.enum.TagOrString | [| 'DESC, 'ASC |] | optional,
            status
              | std.enum.TagOrString
              | [| 'DELETED, 'ACTIVE |]
              | doc "Filter by status, active or deleted. If not specified both are returned."
              | optional,
            type | js2n.string.MinLength 1 | doc "Group type id.",
            ..
          },
      "definitions.get-message-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                message-id
                  | refs."definitions.message-id-inner"
                  | doc "The message identifier.",
                ..
              },
              Array Dyn
            ],
      "definitions.get-messages-inner" =
        {
            limit | refs."definitions.limit" | optional,
            since
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Date, in ISO 8601 format, of the earliest possible data of the first message returned.",
            skip | refs."definitions.skip" | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream identifier.",
            ..
          },
      "definitions.get-room-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                obo
                  | refs."definitions.obo-inner"
                  | { _ | Dyn }
                  | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                  | optional,
                stream-id | refs."definitions.stream-id-inner",
                ..
              },
              Array Dyn
            ],
      "definitions.get-room-members-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                stream-id
                  | refs."definitions.stream-id-inner"
                  | doc "Id of the stream for which to return members.",
                ..
              },
              Array Dyn
            ],
      "definitions.get-rooms-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                active
                  | std.contract.any_of [ Bool, String ]
                  | doc "If true, it restricts the search to active rooms. If false, it restricts the search to inactive rooms. If not specified, it includes both active and inactive rooms. Note that for inactive rooms, only rooms where the calling user is a member will be in the search scope; read the box “Room Search Scope” for further details."
                  | optional,
                creator-id
                  | std.contract.any_of [ Number, js2n.string.MinLength 1 ]
                  | doc "If provided, restrict the search to rooms created by the specified user."
                  | optional,
                labels
                  | js2n.OneOf
                    [
                      js2n.array.ArrayOf String,
                      std.contract.Sequence
                        [
                          js2n.string.MinLength 1,
                          js2n.string.Matches "^\\$\\{.*\\}$"
                        ],
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"${variables.VARIABLE_NAME}" |]
                        ]
                    ]
                  | doc "A list of room keywords whose values will be queried."
                  | optional,
                limit | refs."definitions.limit" | optional,
                member-id
                  | std.contract.any_of [ Number, js2n.string.MinLength 1 ]
                  | doc "If provided, restrict the search to rooms where the specified user is a member."
                  | optional,
                obo
                  | refs."definitions.obo-inner"
                  | { _ | Dyn }
                  | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                  | optional,
                owner-id
                  | std.contract.any_of [ Number, js2n.string.MinLength 1 ]
                  | doc "If provided, restrict the search to rooms owned by the specified user."
                  | optional,
                private
                  | std.contract.any_of [ Bool, String ]
                  | doc "If true, it includes only private rooms in the search results. If false, only public rooms are returned. If not specified, both public and private rooms are returned. Note that for inactive rooms, only discoverable rooms and rooms where the calling user is a member will be in the search scope; read the box “Room Search Scope” for further details."
                  | optional,
                query
                  | js2n.string.MinLength 1
                  | doc "The query which is searched for in room name, description, and optionally keywords. Case-insensitive.",
                skip | refs."definitions.skip" | optional,
                sort-order
                  | std.enum.TagOrString
                  | [| 'RELEVANCE, 'BASIC |]
                  | doc "Sort algorithm to be used. Supports two values: BASIC (legacy algorithm) and RELEVANCE (enhanced algorithm)."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.get-stream-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                obo
                  | refs."definitions.obo-inner"
                  | { _ | Dyn }
                  | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                  | optional,
                stream-id | refs."definitions.stream-id-inner",
                ..
              },
              Array Dyn
            ],
      "definitions.get-stream-members-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                limit | refs."definitions.limit" | optional,
                skip | refs."definitions.skip" | optional,
                stream-id
                  | refs."definitions.stream-id-inner"
                  | doc "Id of the stream for which to return members.",
                ..
              },
              Array Dyn
            ],
      "definitions.get-streams-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                end-date
                  | String
                  | doc "Restricts result set to rooms that have been modified prior to this date (ISO 8601). When specified along with start-date, enables the developer to specify rooms modified within a given time range."
                  | optional,
                limit | refs."definitions.limit" | optional,
                origin
                  | std.enum.TagOrString
                  | [| 'EXTERNAL, 'INTERNAL |]
                  | doc "The origin of the room: INTERNAL (created by a user of the calling user's company) or EXTERNAL (created by a user of another company). If not specified, returns streams of either origin. Only applies to chatrooms with External scope."
                  | optional,
                privacy
                  | std.enum.TagOrString
                  | [| 'PUBLIC, 'PRIVATE |]
                  | doc "The privacy setting of the room: PRIVATE (members must be added) or PUBLIC (anyone can join). If not specified, returns both private and public rooms. Only applies to chatrooms with internal scope."
                  | optional,
                scope
                  | std.enum.TagOrString
                  | [| 'EXTERNAL, 'INTERNAL |]
                  | doc "The scope of the stream: INTERNAL (restricted to members of the calling user's company) or EXTERNAL (including members of the calling user's company, as well as another firm). If not specified, returns streams of either scope."
                  | optional,
                skip | refs."definitions.skip" | optional,
                start-date
                  | String
                  | doc "Restricts result set to rooms that have been modified since this date (ISO 8601). When specified along with end-date, enables the developer to specify rooms modified within a given time range."
                  | optional,
                status
                  | std.enum.TagOrString
                  | [| 'INACTIVE, 'ACTIVE |]
                  | doc "The status of the room: ACTIVE or INACTIVE. If not specified, both active and inactive streams are returned."
                  | optional,
                types
                  | js2n.OneOf
                    [
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'ROOM, 'MIM, 'IM |] ]),
                      std.contract.Sequence
                        [
                          js2n.string.MinLength 1,
                          js2n.string.Matches "^\\$\\{.*\\}$"
                        ],
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"${variables.VARIABLE_NAME}" |]
                        ]
                    ]
                  | doc "A list of stream types that will be returned (IM, MIM, ROOM). If not specified, streams of all types are returned."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.get-user-inner" =
        { user-id | refs."definitions.user-id", .. },
      "definitions.get-user-streams-inner" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  js2n.record.DependentFields
                    { limit = [ "skip" ], skip = [ "limit" ], },
                  {
                    include-inactive-streams
                      | std.contract.any_of [ Bool, String ]
                      | doc "Whether to include inactive conversations. A chatroom is inactive if it has been deactivated by an owner or admin. An IM or MIM is inactive if one of the participating users has been deactivated by an admin. If not specified, only active streams are returned."
                      | optional,
                    limit | refs."definitions.limit" | optional,
                    obo
                      | refs."definitions.obo-inner"
                      | { _ | Dyn }
                      | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                      | optional,
                    skip | refs."definitions.skip" | optional,
                    types
                      | js2n.OneOf
                        [
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'POST, 'ROOM, 'MIM, 'IM |]
                              ]),
                          std.contract.Sequence
                            [
                              js2n.string.MinLength 1,
                              js2n.string.Matches "^\\$\\{.*\\}$"
                            ],
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| '"${variables.VARIABLE_NAME}" |]
                            ]
                        ]
                      | doc m%"
                        A list of stream types that will be returned. Options are IM (1-1 instant messages), MIM (multiparty instant messages), ROOM (rooms), POST (the user's wall). For more information, see the streamTypes section below.
                        If not specified, all types of streams are returned.
                      "%
                      | optional,
                    ..
                  }
                ],
              Array Dyn
            ],
      "definitions.get-users-inner" =
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
                      js2n.record.Required [ "user-ids" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "emails" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "usernames" ],
                      Array Dyn
                    ]
                ],
              {
                active
                  | std.contract.any_of [ Bool, String ]
                  | doc "If true, it searches for active users only. If false, it searches for inactive users only. If not set, it searches for all users regardless of their status."
                  | optional,
                emails
                  | js2n.OneOf
                    [
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.email", String ]),
                      std.contract.Sequence
                        [
                          js2n.string.MinLength 1,
                          js2n.string.Matches "^\\$\\{.*\\}$"
                        ],
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"${variables.VARIABLE_NAME}" |]
                        ]
                    ]
                  | doc "List of email addresses. Note that for this activity, you can use either the user-ids, the emails or the usernames, but only one at a time, you cannot mix and match them."
                  | optional,
                local
                  | std.contract.any_of [ Bool, String ]
                  | doc "If true then a local DB search will be performed and only local pod users will be returned. If absent or false then a directory search will be performed and users from other pods who are visible to the calling user will also be returned."
                  | optional,
                obo
                  | refs."definitions.obo-inner"
                  | { _ | Dyn }
                  | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
                  | optional,
                user-ids | refs."definitions.user-ids-inner" | optional,
                usernames
                  | js2n.OneOf
                    [
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.name", String ]),
                      std.contract.Sequence
                        [
                          js2n.string.MinLength 1,
                          js2n.string.Matches "^\\$\\{.*\\}$"
                        ],
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"${variables.VARIABLE_NAME}" |]
                        ]
                    ]
                  | doc "List of usernames. If username is specified, local must be set to true. Note that for this activity, you can use either the user-ids, the emails or the usernames, but only one at a time, you cannot mix and match them."
                  | optional,
                ..
              }
            ],
      "definitions.group-id" =
        std.contract.any_of
            [
              std.number.Integer,
              js2n.string.MinLength 1,
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ]
            ],
      "definitions.group-member" =
        {
            tenant-id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  js2n.string.MinLength 1
                ]
              | doc "Member's tenant id.",
            user-id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  js2n.string.MinLength 1
                ]
              | doc "Member's user id.",
            ..
          },
      "definitions.group-owner" =
        {
            id
              | std.contract.any_of
                [
                  std.number.Integer,
                  js2n.string.MinLength 1,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "Owner id if the owner type is tenant (podId) or user (userId), otherwise null.",
            type
              | std.enum.TagOrString
              | [| 'USER, 'PLATFORM, 'TENANT |]
              | doc "Owner type. Only TENANT supported now.",
            ..
          },
      "definitions.group-profile" =
        {
            asset-classes
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              '"Corporate Bonds",
                              'Currencies,
                              '"Municipal Bonds",
                              'Commodities,
                              '"Prime Brokerage",
                              '"Government Bonds",
                              '"Fixed Income",
                              '"Securities Lending",
                              '"Cash Equities",
                              'Equities
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's asset classes (one or more)."
              | optional,
            company-name
              | String
              | doc "The company name is expected to be the same as group company owner."
              | optional,
            display-name
              | String
              | doc "The display name in Directory, it is expected to be the same as group name.",
            email | String | optional,
            functions
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              '"Post Trade Management",
                              'Settlements,
                              '"Regulatory Outreach",
                              '"Trade Management",
                              'Allocation,
                              '"Liquidity Management",
                              '"Middle Office",
                              '"Claims Processing",
                              'Matching,
                              'Margin,
                              'Pre-Matching,
                              '"Trade Processing",
                              'Confirmation,
                              'Collateral
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's job functions (one or more)."
              | optional,
            implicit-connection
              | refs."definitions.tenants-users-list"
              | { _ | Dyn }
              | optional,
            industries
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'Services,
                              '"Consumer Cyclicals",
                              'Conglomerates,
                              '"Energy & Utilities",
                              'Financials,
                              '"Basic Materials",
                              '"Real Estate",
                              'Technology,
                              'Transportation,
                              '"Consumer Non-Cyclicals",
                              'Healthcare
                            |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's job industries (one or more)."
              | optional,
            instruments
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'Equities, '"Fixed Income", 'Securities |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's instruments (one or more)."
              | optional,
            interaction-transfer
              | refs."definitions.tenants-users-list"
              | { _ | Dyn }
              | optional,
            job
              | {
                city | String | optional,
                department | String | optional,
                division | String | optional,
                phone | String | optional,
                role | String | optional,
                title | String | optional,
                ..
              }
              | optional,
            market-coverages
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'LATAM, 'APAC, 'NA, 'EMEA |]
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's market coverage (one or more)."
              | optional,
            mobile | String | optional,
            responsibilities
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'Escalation, 'BAU |] ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "The group's responsibilities (one or more)."
              | optional,
            visibility-restriction
              | refs."definitions.tenants-users-list"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.id" = js2n.string.MinLength 1,
      "definitions.im-created-event" =
        {
            im-created
              | refs."definitions.im-created-event-inner"
              | { _ | Dyn }
              | doc "Generated when an IM or MIM is created with the workflow bot as a member, initiated either by the workflow bot or another user.",
            ..
          },
      "definitions.im-created-event-inner" = { _ | Dyn },
      "definitions.key-inner" =
        {
            action
              | std.enum.TagOrString
              | [| 'REVOKE, 'EXTEND, 'SAVE |]
              | doc m%"
                A string indicating the action to be performed on the user's RSA.
                
                The following actions can be performed on the user's active RSA key:
                SAVE
                REVOKE.
                
                The following actions can be performed onto the user's rotated RSA key:
                REVOKE
                EXTEND.
              "%
              | optional,
            expiration
              | js2n.string.MinLength 1
              | doc "An ISO 8601 timestamp containing the RSA key expiration date. This value is only set for rotated keys."
              | optional,
            key
              | js2n.string.MinLength 1
              | doc "A string containing the user's RSA public key. The key must be 4096 bits. Only PKCS8 format is allowed."
              | optional,
          },
      "definitions.keywords" =
        js2n.OneOf
            [
              { _ | Dyn },
              js2n.string.MinLength 1,
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ]
            ],
      "definitions.limit" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ],
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Maximum 1000,
                  js2n.number.Minimum 1
                ],
              String
            ],
      "definitions.members-can-invite" = std.contract.any_of [ Bool, String ],
      "definitions.message-id-inner" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${ACTIVITY_ID.outputs.message.initialMessageId}",
                    '"${ACTIVITY_ID.outputs.message.messageId}",
                    '"${ACTIVITY_ID.outputs.msgId}",
                    '"${variables.VARIABLE_NAME}"
                  |]
                ],
              std.contract.Sequence [ refs."definitions.id", String ]
            ],
      "definitions.message-received-event" =
        {
            message-received
              | refs."definitions.message-received-event-inner"
              | { _ | Dyn }
              | doc "Generated when a message is sent in an IM, MIM, or chatroom of which the workflow bot is a member, including messages sent by the user him/herself.",
            ..
          },
      "definitions.message-received-event-inner" =
        {
            content | String | doc "Message content to listen to." | optional,
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            requires-bot-mention
              | Bool
              | doc "If true, the event is only triggered if the bot is mentioned."
              | optional,
          },
      "definitions.message-suppressed-event" =
        {
            message-suppressed
              | refs."definitions.message-suppressed-event-inner"
              | { _ | Dyn }
              | doc "Generated when messages are suppressed.",
            ..
          },
      "definitions.message-suppressed-event-inner" = { _ | Dyn },
      "definitions.multilateral-room" = std.contract.any_of [ Bool, String ],
      "definitions.name" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${ACTIVITY_ID.outputs.user.userAttributes.displayName}",
                    '"${ACTIVITY_ID.outputs.user.userAttributes.userName}",
                    '"${ACTIVITY_ID.outputs.user.userAttributes.lastName}",
                    '"${ACTIVITY_ID.outputs.user.userAttributes.firstName}",
                    '"${variables.VARIABLE_NAME}"
                  |]
                ],
              js2n.string.MinLength 1
            ],
      "definitions.obo-inner" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "user-id" ],
                  js2n.record.Required [ "username" ]
                ],
              {
                user-id | refs."definitions.user-id" | optional,
                username | refs."definitions.name" | String | optional,
                ..
              }
            ],
      "definitions.on" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.form-replied-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.activity-expired-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.activity-completed-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.activity-failed-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.message-received-event", { _ | Dyn } ],
                  refs."definitions.request-received-event",
                  std.contract.Sequence
                    [
                      refs."definitions.message-suppressed-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.post-shared-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.im-created-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.room-created-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.room-updated-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.room-deactivated-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.room-reactivated-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.room-member-promoted-to-owner-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.room-member-demoted-from-owner-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.user-joined-room-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.user-left-room-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.user-requested-join-room-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.connection-requested-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.connection-accepted-event",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.timer-fired-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.one-of-event", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.all-of-event", { _ | Dyn } ]
                ],
              {
                timeout
                  | js2n.string.Matches
                    "^P(?!$)(\\d+(?:\\.\\d+)?Y)?(\\d+(?:\\.\\d+)?M)?(\\d+(?:\\.\\d+)?W)?(\\d+(?:\\.\\d+)?D)?(T(?=\\d)(\\d+(?:\\.\\d+)?H)?(\\d+(?:\\.\\d+)?M)?(\\d+(?:\\.\\d+)?S)?)?$"
                  | doc "Timeout while waiting for form-replied events, expressed as an ISO 8601 duration. Default value is 24 hours."
                  | optional,
                ..
              }
            ],
      "definitions.one-of-event" =
        {
            one-of
              | Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.form-replied-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.activity-expired-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.activity-completed-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.activity-failed-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.message-received-event",
                        { _ | Dyn }
                      ],
                    refs."definitions.request-received-event",
                    std.contract.Sequence
                      [
                        refs."definitions.message-suppressed-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.post-shared-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.im-created-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.room-created-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.room-updated-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-deactivated-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-reactivated-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-member-promoted-to-owner-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.room-member-demoted-from-owner-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.user-joined-room-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.user-left-room-event", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.user-requested-join-room-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.connection-requested-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.connection-accepted-event",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.timer-fired-event", { _ | Dyn } ]
                  ]
              )
              | doc "Used to receive at least one of the listed events.",
            ..
          },
      "definitions.phoneNumber" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${ACTIVITY_ID.outputs.user.userAttributes.twoFactorAuthPhone}",
                    '"${ACTIVITY_ID.outputs.user.userAttributes.mobilePhoneNumber}",
                    '"${ACTIVITY_ID.outputs.user.userAttributes.workPhoneNumber}",
                    '"${variables.VARIABLE_NAME}"
                  |]
                ],
              js2n.string.Matches "^[0-9]*$|^\\+[0-9]*$"
            ],
      "definitions.pin-message-inner" =
        {
            message-id | refs."definitions.message-id-inner",
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            ..
          },
      "definitions.post-shared-event" =
        {
            post-shared
              | refs."definitions.post-shared-event-inner"
              | { _ | Dyn }
              | doc "Generated when either the workflow bot shares a wall post written by another user or another user shares a wall post written by the workflow bot.",
            ..
          },
      "definitions.post-shared-event-inner" = { _ | Dyn },
      "definitions.promote-room-owner-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream id where to promote user.",
            user-ids
              | refs."definitions.user-ids-inner"
              | doc "User ids to promote in the room.",
            ..
          },
      "definitions.public" = std.contract.any_of [ Bool, String ],
      "definitions.read-only" = std.contract.any_of [ Bool, String ],
      "definitions.remove-room-member-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream id where to remove user(s).",
            user-ids
              | refs."definitions.user-ids-inner"
              | doc "User ids to remove from the room.",
            ..
          },
      "definitions.repeat" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                repeat
                  | String
                  | doc "ISO 8601 repeating intervals to repeat the current activity.",
                ..
              },
              Array Dyn
            ],
      "definitions.request-received-event" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                request-received
                  | refs."definitions.request-received-event-inner"
                  | { _ | Dyn }
                  | doc "Generated when an HTTP request is received in order to trigger a workflow.",
                ..
              },
              Array Dyn
            ],
      "definitions.request-received-event-inner" =
        {
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            token
              | js2n.string.MinLength 1
              | doc "Token to authorize incoming http requests.",
          },
      "definitions.roles-inner" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'CEP_VISIBILITY_GROUP_MANAGEMENT,
                          'EF_POLICY_MANAGEMENT,
                          'KEY_MANAGER,
                          'SYMPHONY_ADMIN,
                          'CONTENT_EXPORT_SERVICE,
                          'AGENT,
                          'AUDIT_TRAIL_MANAGEMENT,
                          'MALWARE_SCAN_STATE_USER,
                          'MALWARE_SCAN_MANAGER,
                          'CONTENT_MANAGEMENT,
                          'SCOPE_MANAGEMENT,
                          'USER_PROVISIONING,
                          'SUPER_COMPLIANCE_OFFICER,
                          'COMPLIANCE_OFFICER,
                          'L2_SUPPORT,
                          'L1_SUPPORT,
                          'SUPER_ADMINISTRATOR,
                          'ADMINISTRATOR,
                          'INDIVIDUAL
                        |]
                      ])
                ],
              std.contract.Sequence
                [
                  js2n.string.MinLength 1,
                  js2n.string.Matches "^\\$\\{.*\\}$"
                ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ]
            ],
      "definitions.room-created-event" =
        {
            room-created
              | refs."definitions.room-created-event-inner"
              | { _ | Dyn }
              | doc "Generated when a room is created by the workflow bot.",
            ..
          },
      "definitions.room-created-event-inner" = { _ | Dyn },
      "definitions.room-deactivated-event" =
        {
            room-deactivated
              | refs."definitions.room-deactivated-event-inner"
              | { _ | Dyn }
              | doc "Generated when a room of which the workflow bot is a member is deactivated, including rooms deactivated by the user him/herself.",
            ..
          },
      "definitions.room-deactivated-event-inner" = { _ | Dyn },
      "definitions.room-description" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${variables.VARIABLE_NAME}",
                    '"${ACTIVITY_ID.outputs.room.roomAttributes.description}"
                  |]
                ],
              String
            ],
      "definitions.room-member-demoted-from-owner-event" =
        {
            room-member-demoted-from-owner
              | refs."definitions.room-member-demoted-from-owner-event-inner"
              | { _ | Dyn }
              | doc "Generated when a user is demoted from an owner to a participant of a room of which the workflow bot is a member, including when the user himself is demoted to a participant or demotes another user.",
            ..
          },
      "definitions.room-member-demoted-from-owner-event-inner" = { _ | Dyn },
      "definitions.room-member-promoted-to-owner-event" =
        {
            room-member-promoted-to-owner
              | refs."definitions.room-member-promoted-to-owner-event-inner"
              | { _ | Dyn }
              | doc "Generated when a user is promoted from a participant to an owner of a room of which the workflow bot is a member, including when the user himself is promoted to an owner or promotes another user.",
            ..
          },
      "definitions.room-member-promoted-to-owner-event-inner" =
        {
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            ..
          },
      "definitions.room-name" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${variables.VARIABLE_NAME}",
                    '"${ACTIVITY_ID.outputs.stream.roomAttributes.name}",
                    '"${ACTIVITY_ID.outputs.room.roomAttributes.name}"
                  |]
                ],
              js2n.string.MaxLength 50
            ],
      "definitions.room-reactivated-event" =
        {
            room-reactivated
              | refs."definitions.room-reactivated-event-inner"
              | { _ | Dyn }
              | doc "Generated when a room of which the workflow bot is a member is reactivated, including rooms reactivated by the user him/herself.",
            ..
          },
      "definitions.room-reactivated-event-inner" = { _ | Dyn },
      "definitions.room-updated-event" =
        {
            room-updated
              | refs."definitions.room-updated-event-inner"
              | { _ | Dyn }
              | doc "Generated when a room of which the workflow bot is a member is updated, including rooms updated by the user him/herself.",
            ..
          },
      "definitions.room-updated-event-inner" = { _ | Dyn },
      "definitions.send-message-inner" =
        {
            attachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attachment", { _ | Dyn } ]
              )
              | doc "One or more attachments to be sent along with the message."
              | optional,
            content | refs."definitions.content-inner",
            data
              | String
              | doc "Message data, which is a Json string and sent along with message."
              | optional,
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            to
              | refs."definitions.to"
              | { _ | Dyn }
              | doc "The recipient (conversation, IM, MIM or chatroom) in which the message should be posted."
              | optional,
            ..
          },
      "definitions.single-attachment" = js2n.string.MinLength 1,
      "definitions.skip" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ],
              std.contract.Sequence
                [ std.number.Integer, js2n.number.Minimum 0 ],
              String
            ],
      "definitions.stream-id" =
        { stream-id | refs."definitions.stream-id-inner", .. },
      "definitions.stream-id-inner" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${ACTIVITY_ID.outputs.stream.id}",
                    '"${ACTIVITY_ID.outputs.roomId}",
                    '"${variables.VARIABLE_NAME}",
                    '"${event.source.message.stream.streamId}"
                  |]
                ],
              std.contract.Sequence [ refs."definitions.id", String ]
            ],
      "definitions.stream-ids" =
        {
            stream-ids
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ],
            ..
          },
      "definitions.sub-type" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'EMAIL |] ],
      "definitions.tenants-users-list" =
        {
            tenant-ids
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.MinLength 1
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | optional,
            user-ids
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.MinLength 1
                          ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | optional,
            ..
          },
      "definitions.timer-fired-event" =
        {
            timer-fired
              | refs."definitions.timer-fired-event-inner"
              | { _ | Dyn }
              | doc "Timer based event. It is either triggered at a given point in time using the keyword \"at\" or repeated using the keyword \"repeat\". Note this is not a Datafeed real-time event.",
          },
      "definitions.timer-fired-event-inner" =
        std.contract.Sequence
            [
              js2n.OneOf [ refs."definitions.repeat", refs."definitions.at" ],
              { _ | Dyn }
            ],
      "definitions.to" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.stream-id", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.stream-ids", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.user-ids", { _ | Dyn } ]
                ],
              { _ | Dyn }
            ],
      "definitions.unpin-message-inner" =
        {
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            stream-id | refs."definitions.stream-id-inner",
            ..
          },
      "definitions.update-group-inner" =
        {
            e-tag
              | String
              | doc "Required to update group fields except the image-path."
              | optional,
            group-id | refs."definitions.group-id",
            image-path
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Path to the file to be uploaded as the group's avatar. The path is relative to the workflows folder."
              | optional,
            status
              | std.enum.TagOrString
              | [| 'DELETED, 'ACTIVE |]
              | doc "Status flag to distinguish between active and deleted objects. Required to update group fields except the image-path."
              | optional,
            ..
          },
      "definitions.update-message-inner" =
        {
            content | refs."definitions.content-inner",
            message-id | refs."definitions.message-id-inner",
            silent
              | std.contract.any_of [ Bool, String ]
              | doc "If enabled, the new updated message is marked as read, otherwise is unread"
              | optional,
            ..
          },
      "definitions.update-room-inner" =
        {
            active
              | refs."definitions.active"
              | std.contract.any_of [ Bool, String ]
              | optional,
            copy-protected
              | refs."definitions.copy-protected"
              | std.contract.any_of [ Bool, String ]
              | optional,
            cross-pod
              | refs."definitions.cross-pod"
              | std.contract.any_of [ Bool, String ]
              | optional,
            discoverable
              | refs."definitions.discoverable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            keywords | refs."definitions.keywords" | optional,
            members-can-invite
              | refs."definitions.members-can-invite"
              | std.contract.any_of [ Bool, String ]
              | optional,
            multilateral-room
              | refs."definitions.multilateral-room"
              | std.contract.any_of [ Bool, String ]
              | optional,
            obo
              | refs."definitions.obo-inner"
              | { _ | Dyn }
              | doc "Defines whether the activity will be executed on behalf of a user and the user on whose behalf the call will be made"
              | optional,
            public
              | refs."definitions.public"
              | std.contract.any_of [ Bool, String ]
              | optional,
            read-only
              | refs."definitions.read-only"
              | std.contract.any_of [ Bool, String ]
              | optional,
            room-description
              | refs."definitions.room-description"
              | String
              | optional,
            room-name | refs."definitions.room-name" | String | optional,
            stream-id
              | refs."definitions.stream-id-inner"
              | doc "Stream's id to update.",
            view-history
              | refs."definitions.view-history"
              | std.contract.any_of [ Bool, String ]
              | optional,
            ..
          },
      "definitions.user-id" =
        std.contract.any_of
            [
              std.number.Integer,
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"${event.source.toUser.userId}",
                    '"${event.source.fromUser.userId}",
                    '"${event.initiator.user.userId}",
                    '"${ACTIVITY_ID.outputs.user.userSystemInfo.id}"
                  |]
                ]
            ],
      "definitions.user-ids" =
        { user-ids | refs."definitions.user-ids-inner", .. },
      "definitions.user-ids-inner" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.array.UniqueItems,
                  js2n.array.ArrayOf refs."definitions.user-id"
                ],
              std.contract.Sequence
                [
                  js2n.string.MinLength 1,
                  js2n.string.Matches "^\\$\\{.*\\}$"
                ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| '"${variables.VARIABLE_NAME}" |] ]
            ],
      "definitions.user-joined-room-event" =
        {
            user-joined-room
              | refs."definitions.user-joined-room-event-inner"
              | { _ | Dyn }
              | doc "Generated when a new user joins or is added to a room of which the workflow bot is a member, including when the user himself joins or is added to a room.",
            ..
          },
      "definitions.user-joined-room-event-inner" =
        {
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            ..
          },
      "definitions.user-left-room-event" =
        {
            user-left-room
              | refs."definitions.user-left-room-event-inner"
              | { _ | Dyn }
              | doc "Generated when a user leaves or is removed from a room of which the workflow bot is a member, including when the user himself leaves or is removed from a room.",
            ..
          },
      "definitions.user-left-room-event-inner" =
        {
            id
              | js2n.string.Matches "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
              | doc "Event's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
              | optional,
            ..
          },
      "definitions.user-requested-join-room-event" =
        {
            user-requested-join-room
              | refs."definitions.user-requested-join-room-event-inner"
              | { _ | Dyn }
              | doc "Generated when a user requests to join a room. Only the user who requested to join the room and the owners of that room will receive this event on their datafeeds.",
            ..
          },
      "definitions.user-requested-join-room-event-inner" = { _ | Dyn },
      "definitions.user-role-inner" =
        {
            roles | refs."definitions.roles-inner",
            user-ids
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [ std.number.Integer, js2n.string.MinLength 1 ])
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{.*\\}$"
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"${variables.VARIABLE_NAME}" |]
                    ]
                ]
              | doc "Users to add or remove roles from.",
            ..
          },
      "definitions.view-history" = std.contract.any_of [ Bool, String ],
    }
    in
  {
      activities
        | Array (
          std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^(?!create-room|update-room|add-room-member|remove-room-member|promote-room-owner|demote-room-owner|send-message|update-message|pin-message|unpin-message|debug|execute-script|execute-request|create-user|create-system-user|create-connection|update-user|update-system-user|add-user-role|remove-user-role|remove-connection|reject-connection|accept-connection|get-user|get-users|get-stream|get-room|get-message|get-connection|get-stream-members|get-room-members|get-user-streams|get-streams|get-rooms|get-messages|get-connections)([a-z0-9-]+)$" =
                          refs."definitions.basic-activity-inner",
                      },
                  properties =
                    {
                        accept-connection =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.connection-inner"
                              ],
                        add-group-member =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.add-group-member-inner"
                              ],
                        add-room-member =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.add-room-member-inner"
                              ],
                        add-user-role =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.user-role-inner"
                              ],
                        create-connection =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.connection-inner"
                              ],
                        create-group =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-group-inner",
                                js2n.record.Required
                                  [ "members", "name", "owner", "profile" ]
                              ],
                        create-room =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-room-inner"
                              ],
                        create-system-user =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-system-user-inner",
                                js2n.record.Required
                                  [ "display-name", "email", "username" ]
                              ],
                        create-user =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-user-inner",
                                js2n.record.Required
                                  [
                                    "display-name",
                                    "email",
                                    "firstname",
                                    "lastname",
                                    "username"
                                  ]
                              ],
                        debug =
                          {
                              "else"
                                | { _ | Dyn }
                                | doc "Default execution of the activity when if conditions are used for previous activities."
                                | optional,
                              id
                                | js2n.string.Matches
                                  "^(?!variables$)([a-zA-Z][a-zA-Z0-9_]+)$"
                                | doc "Activity's identifier, should be unique across workflow. As it can be used as a variable identifier only alphanumerical characters are allowed."
                                | optional,
                              "if"
                                | String
                                | doc "Conditional execution of the activity based on a boolean expression."
                                | optional,
                              object
                                | std.contract.any_of [ String, { _ | Dyn } ],
                              on
                                | refs."definitions.on"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                        demote-room-owner =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.demote-room-owner-inner"
                              ],
                        execute-request =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.execute-request-inner"
                              ],
                        execute-script =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.execute-script-inner"
                              ],
                        get-attachment =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-attachment-inner"
                              ],
                        get-connection =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.connection-inner"
                              ],
                        get-connections =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-connections-inner"
                              ],
                        get-group =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-group-inner"
                              ],
                        get-groups =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-groups-inner"
                              ],
                        get-message =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-message-inner"
                              ],
                        get-messages =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-messages-inner"
                              ],
                        get-room =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-room-inner"
                              ],
                        get-room-members =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-room-members-inner"
                              ],
                        get-rooms =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-rooms-inner"
                              ],
                        get-stream =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-stream-inner"
                              ],
                        get-stream-members =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-stream-members-inner"
                              ],
                        get-streams =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-streams-inner"
                              ],
                        get-user =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-user-inner"
                              ],
                        get-user-streams =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-user-streams-inner"
                              ],
                        get-users =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.get-users-inner"
                              ],
                        pin-message =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.pin-message-inner"
                              ],
                        promote-room-owner =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.promote-room-owner-inner"
                              ],
                        reject-connection =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.connection-inner"
                              ],
                        remove-connection =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.connection-inner"
                              ],
                        remove-room-member =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.remove-room-member-inner"
                              ],
                        remove-user-role =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.user-role-inner"
                              ],
                        send-message =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.send-message-inner"
                              ],
                        unpin-message =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.unpin-message-inner"
                              ],
                        update-group =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-group-inner",
                                refs."definitions.update-group-inner"
                              ],
                        update-message =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.update-message-inner"
                              ],
                        update-room =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.update-room-inner"
                              ],
                        update-system-user =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-system-user-inner",
                                { user-id | refs."definitions.user-id", .. }
                              ],
                        update-user =
                          std.contract.Sequence
                              [
                                refs."definitions.basic-activity-inner",
                                refs."definitions.create-user-inner",
                                { user-id | refs."definitions.user-id", .. }
                              ],
                      },
                  required = {},
                }
            ]
        )
        | doc "A list of activities to be executed by the workflow. By default the execution is sequential but complex logic can be orchestrated with if/else conditions as well as on/activity-completed events.",
      id
        | js2n.string.MaxLength 100
        | js2n.string.Matches "^[a-zA-Z]+[a-zA-Z0-9][^ ]*$"
        | doc "Workflow's id should start with a letter. It is optional. If no id is provided, the workflow filename is used. Otherwise, it will be generated. The id will appear in logs and audit trails.",
      properties
        | {
          publish
            | std.contract.any_of [ Bool, String ]
            | doc "Should the workflow be published or not, true publish, false otherwise"
            | optional,
          ..
        }
        | doc "Some metadata about the workflow"
        | optional,
      variables
        | { _ | Dyn }
        | doc "Variables are accessible and editable within the entire workflow. A map of key: value entries is expected."
        | optional,
    }