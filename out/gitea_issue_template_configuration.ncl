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
          Specify whether forms have to be used or blank issue are allowed
          https://docs.gitea.com/usage/issue-pull-request-templates#possible-options
        "%
        | optional,
      contact_links
        | js2n.array.MinItems 1
        | Array
          {
            about
              | js2n.string.MinLength 1
              | doc m%"
                A short description of your Link
                https://docs.gitea.com/usage/issue-pull-request-templates#contact-link
              "%,
            name
              | js2n.string.MinLength 1
              | doc m%"
                The name of your link
                https://docs.gitea.com/usage/issue-pull-request-templates#contact-link
              "%,
            url
              | js2n.string.Matches "^https?://"
              | doc m%"
                The URL of your Link
                https://docs.gitea.com/usage/issue-pull-request-templates#contact-link
              "%,
          }
        | doc m%"
          Contact links
          https://docs.gitea.com/usage/issue-pull-request-templates#possible-options
        "%
        | optional,
    }