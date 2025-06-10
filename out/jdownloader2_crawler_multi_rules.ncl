# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array (
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
                    properties =
                      { rule = std.contract.not (js2n.Const "DEEPDECRYPT"), },
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
                {
                  deepPattern | js2n.Null | optional,
                  packageNamePattern | js2n.Null | optional,
                  passwordPattern | js2n.Null | optional,
                  ..
                },
                Array Dyn
              ]) js2n.Always,
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
                    properties =
                      { rule = std.contract.not (js2n.Const "REWRITE"), },
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
                { rewriteReplaceWith | js2n.Null | optional, .. },
                Array Dyn
              ]) js2n.Always,
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
                    properties =
                      {
                          rule =
                            std.contract.not
                                (js2n.OneOf
                                  [
                                    js2n.Const "DIRECTHTTP",
                                    js2n.Const "DEEPDECRYPT",
                                    js2n.Const "SUBMITFORM",
                                    js2n.Const "FOLLOWREDIRECT"
                                  ]),
                        },
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
                {
                  cookies | js2n.Null | optional,
                  updateCookies | js2n.Null | optional,
                  ..
                },
                Array Dyn
              ]) js2n.Always,
          {
            cookies
              | Array (js2n.array.Items [ String, String ] js2n.Always)
              | doc m%"
                - Type: Array of length-2 Arrays
                - Applies to rule: DIRECTHTTP, DEEPDECRYPT, SUBMITFORM or FOLLOWREDIRECT
                - Purpose: A list of length-2 arrays in the form [["cookieName", "cookieValue"],[..., ...]...]. Here you can put in your personal cookies e.g. login cookies of websites which JD otherwise fails to parse.Also if "updateCookies" is enabled, JD will update these with all cookies it receives from the website(s) that match the "pattern" property.
              "%
              | optional,
            deepPattern
              | js2n.Nullable String
              | doc m%"
                - Type: HTML RegEx or null
                - Applies to rule: DEEPDECRYPT
                - Purpose: Which URLs should this rule look for inside the page's (unmodified by javascript) HTML code. null (or blank) = auto scan and return all supported URLs found in HTML code.
                Keep in mind that, if the url's found in the html are relative (e.g. starting with a slash / character instead of a protocol like http or a domain (website root) name) you WILL have to enclose the entire expression in quotes (outside of the parentheses that do capturing) like \"(...)\" AND enclose the part that would match the missing part of the url (i.e. from the protocol to the slash-or-other-character it begins with) in an 'OPTIONAL, NON CAPTURING' group (?:...)?. Resulting in the following pattern for pretty much every case \"((?:missing part of full url)?rest of url that is in the html)\"
              "%
              | optional,
            enabled
              | Bool
              | doc m%"
                - Type: Boolean
                - Applies to rule: ALL
                - Purpose: Enables or disables this rule
              "%,
            formPattern
              | String
              | doc m%"
                - Type: HTML RegEx
                - Applies to rule: DEEPDECRYPT
                - Purpose:
              "%
              | optional,
            id
              | std.number.Integer
              | doc m%"
                - Type: Integer
                - Applies to rule: ALL
                - Purpose: Auto generated ID of the rule. Normally leave this blank and JD2 will autoinsert.
              "%
              | optional,
            logging
              | Bool
              | doc m%"
                - Type: Boolean
                - Applies to rule: ALL
                - Purpose: Enable this for support purposes. Logs of your LinkCrawler Rules can be found in your JD install dir/logs/: LinkCrawlerRule.<RuleID>.log.0 and /LinkCrawlerDeep.*
              "%
              | optional,
            maxDecryptDepth
              | std.number.Integer
              | doc m%"
                - Type: Integer
                - Applies to rule: ALL
                - Purpose: How many layers deep do should your rule crawl (e.g. rule returns URLs matching the same rule again recursively - how often is this chain allowed to happen?)
              "%
              | optional,
            name
              | String
              | doc m%"
                - Type: String
                - Applies to rule: ALL
                - Purpose: name of the rule.
              "%,
            packageNamePattern
              | String
              | doc m%"
                - Type: HTML RegEx
                - Applies to rule: DEEPDECRYPT
                - Purpose: All URLs crawled by this rule will be grouped into the same package that is the HTML RegEx's first capture
              "%
              | optional,
            passwordPattern
              | String
              | doc m%"
                - Type: HTML RegEx or null
                - Applies to rule: DEEPDECRYPT
                - Purpose: Matches against archive extraction password that may be found as text inside the page's (unmodified by javascript) HTML code. First returned capture must be the password.
              "%
              | optional,
            pattern
              | String
              | doc m%"
                - Type: RegEx
                - Applies to rule: ALL
                - Purpose: defines on which URLs will this rule apply by matching it to the pattern
              "%,
            rewriteReplaceWith
              | String
              | doc m%"
                - Type: String
                - Applies to rule: REWRITE
                - Purpose:Pattern for new URL, can use captures from "pattern" in the $1 form
              "%
              | optional,
            rule
              | std.enum.TagOrString
              | [|
                'SUBMITFORM,
                'FOLLOWREDIRECT,
                'DIRECTHTTP,
                'REWRITE,
                'DEEPDECRYPT
              |],
            updateCookies
              | Bool
              | doc m%"
                - Type: Boolean
                - Applies to rule: DIRECTHTTP, DEEPDECRYPT, SUBMITFORM or FOLLOWREDIRECT
                - Purpose: If the target websites returns new cookies, save these inside this rule and update this rule.
              "%
              | optional,
          }
        ]
    )