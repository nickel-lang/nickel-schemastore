# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ActionPluginDeclaration" =
        {
            config | js2n.Always | optional,
            name | js2n.string.MinLength 1,
            on
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'unknown,
                      'failure,
                      'partial,
                      'success,
                      'interrupted,
                      'pending,
                      'running
                    |]
                  ]
              )
              | doc "When to trigger this action"
              | optional,
            ..
          },
      "definitions.AutoMergeActionConfig" =
        {
            commitMessage
              | String
              | doc m%"
                Commit message
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "npm-0"
                }
                ```
                
              "%
              | optional,
            removeUpdateBranch
              | Bool
              | doc "Whether to remove the update branch"
              | optional,
            squash
              | Bool
              | doc "Whether to squash commits of the update branch"
              | optional,
            ..
          },
      "definitions.CreateIssueActionConfig" =
        {
            additionalText
              | String
              | doc "Additional text to embed in the issue description"
              | optional,
            assignees
              | Array String
              | doc "Usernames to assign to the issue created. Note that Gitlab CE only allows one assignee."
              | optional,
            closeOpen
              | Bool
              | doc "Close open issues that were created by Pmbot. This option prevents multiple issues open simultaneously when you don't have the time to look at them."
              | optional,
            title
              | String
              | doc m%"
                Issue title
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "myPm",
                    "status": "myStatus",
                    "statusEmoji": "✅"
                }
                ```
                
              "%
              | optional,
            token
              | js2n.string.MinLength 1
              | doc "An authentication token. For Gitlab, this should be a [personal access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html). For Github, it should be a [Github personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line).",
            ..
          },
      "definitions.CreateMergeRequestActionConfig" =
        {
            additionalText
              | String
              | doc "Additional text to embed in the merge request description"
              | optional,
            assignees
              | Array String
              | doc "Usernames to assign to the issue created. Note that Gitlab CE only allows one assignee."
              | optional,
            closeOpen
              | Bool
              | doc "Close open merge requests that were created by Pmbot. This option prevents multiple merge requests open simultaneously when you don't have the time to merge them."
              | optional,
            deleteSourceBranch
              | Bool
              | doc "[GITLAB only] Whether the merge request source branch should be deleted"
              | optional,
            maintainerCanModify
              | Bool
              | doc "[GITHUB only] Whether maintainers can modify the created pull request"
              | optional,
            squash
              | Bool
              | doc "[GITLAB only] Whether commits of the merge request source branch should be squashed"
              | optional,
            title
              | String
              | doc m%"
                Merge request title
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "myPm",
                    "status": "myStatus",
                    "statusEmoji": "✅"
                }
                ```
                
              "%
              | optional,
            token
              | js2n.string.MinLength 1
              | doc "An authentication token. For Gitlab, this should be a [personal access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html). For Github, it should be a [Github personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line).",
            ..
          },
      "definitions.EmailActionConfig" =
        {
            additionalText
              | String
              | doc "Additional text to embed in the email body"
              | optional,
            messageConfig
              | refs."definitions.MessageConfig"
              | { _ | Dyn }
              | doc "Nodemailer [message configuration](https://nodemailer.com/message/). Allows you to override message configuration properties, except `html` and `text`.",
            transportOptions
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Nodemailer [transport options](https://nodemailer.com/smtp/#general-options)",
            ..
          },
      "definitions.MattermostActionConfig" =
        {
            additionalText
              | String
              | doc "Additional text to embed in the message body"
              | optional,
            channels
              | Array String
              | doc "Channels where to send the message. Obsolete parameter when you have enabled **Lock to this channel** for the incoming webhook."
              | optional,
            title
              | String
              | doc m%"
                Message title
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "myPm",
                    "status": "myStatus",
                    "statusEmoji": "✅"
                }
                ```
                
              "%
              | optional,
            url
              | js2n.string.MinLength 1
              | doc "Mattermost [incoming webhook URL](https://docs.mattermost.com/developer/webhooks-incoming.html#simple-incoming-webhook)",
            ..
          },
      "definitions.MessageConfig" =
        {
            from
              | js2n.string.MinLength 1
              | doc "Sender's email. Be aware that some providers (e.g. OBVH) will silently ignore sending the email when the sender address does not match the username.",
            subject
              | String
              | doc m%"
                Email subject
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "myPm",
                    "status": "myStatus",
                    "statusEmoji": "✅"
                }
                ```
                
              "%
              | optional,
            to | js2n.string.MinLength 1 | doc "Recipient address(es)",
            ..
          },
      "definitions.SlackActionConfig" =
        {
            additionalText
              | String
              | doc "Additional text to embed in the slack message body"
              | optional,
            title
              | String
              | doc m%"
                Slack message title
                
                This [handlebars](https://handlebarsjs.com/guide/#what-is-handlebars) template is passed the following context:
                
                ```
                {
                    "slug": "myPm",
                    "status": "myStatus",
                    "statusEmoji": "✅"
                }
                ```
                
              "%
              | optional,
            url
              | js2n.string.MinLength 1
              | doc m%"
                Slack webhook URL.
                
                To get this URL:
                1. [Create](https://api.slack.com/apps?new_app=1) a custom Slack App. Fill in the form as follows:
                    - *App Name*: `Pmbot`
                    - *Development Slack Workspace*: Workspace where you want Pmbot to be integrated to
                2. Click "Create App". You are redirected to your app's page.
                3. Under menu section *Features*, select *Incoming Webhooks*, then toggle on *Activate Incoming Webhooks*. A new section named *Webhook URLs for Your Workspace* appears.
                4. Under section *Webhook URLs for Your Workspace*, click *Add New Webhook To Workspace*, then select the channel to which you want messages to be sent, for example `#pmbot`.
                5. Once added, copy the webhook URL and configure this action with it
                  
              "%,
            ..
          },
      "definitions.WebhookActionConfig" =
        {
            extraData
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Data that will be appended to the webhook payload in property \"extraData\""
              | optional,
            headers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.WebhookHeader", { _ | Dyn } ]
              )
              | doc "Additional headers to append to the HTTP request"
              | optional,
            url | js2n.string.MinLength 1 | doc "Url to call",
            ..
          },
      "definitions.WebhookHeader" =
        {
            name | js2n.string.MinLength 1 | doc "Header name",
            value | js2n.string.MinLength 1 | doc "Header value",
            ..
          },
    }
    in
  {
      actions
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.CreateIssueActionConfig",
                            name = js2n.Const "create-issue",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config =
                              refs."definitions.CreateMergeRequestActionConfig",
                            name = js2n.Const "create-merge-request",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.AutoMergeActionConfig",
                            name = js2n.Const "auto-merge",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.WebhookActionConfig",
                            name = js2n.Const "webhook",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.SlackActionConfig",
                            name = js2n.Const "slack",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.MattermostActionConfig",
                            name = js2n.Const "mattermost",
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            config = refs."definitions.EmailActionConfig",
                            name = js2n.Const "email",
                          },
                      required = {},
                    }
                ],
              refs."definitions.ActionPluginDeclaration"
            ]
        )
        | doc "Actions to execute after each package manager update"
        | optional,
      packageManagers
        | js2n.array.MinItems 1
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        ),
      version | std.enum.TagOrString | [| '"1" |],
      ..
    }