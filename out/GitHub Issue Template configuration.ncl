# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      blank_issues_enabled
        | Bool
        | doc m%"
          Specify whether allow blank issue creation
          https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
        "%
        | optional,
      contact_links
        | js2n.array.MinItems 1
        | Array
          {
            about
              | js2n.string.MinLength 1
              | doc m%"
                A link description
                https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
              "%,
            name
              | js2n.string.MinLength 1
              | doc m%"
                A link title
                https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
              "%,
            url
              | js2n.string.Matches "^https?://"
              | doc m%"
                A link URL
                https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
              "%,
          }
        | doc m%"
          Contact links
          https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository#configuring-the-template-chooser
        "%
        | optional,
    }