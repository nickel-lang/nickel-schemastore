# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.string-property-partial" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "\\S" ],
      "definitions.version-property-partial" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              js2n.string.Matches "^\\d+(\\.\\d+){1,2}$"
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.record.DependentFields { multiversion = [ "version" ], },
        {
          author
            | js2n.string.MinLength 1
            | js2n.string.Matches "\\S"
            | doc m%"
              An author of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          comments
            | refs."definitions.string-property-partial"
            | String
            | doc m%"
              Comments of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          contributors
            | js2n.string.MinLength 1
            | js2n.string.Matches "\\S"
            | doc m%"
              Contributors of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          description
            | refs."definitions.string-property-partial"
            | String
            | doc m%"
              A description of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%,
          max-instances
            | std.number.Integer
            | js2n.number.Minimum (-1)
            | doc m%"
              A count of maximum instances of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          multiversion
            | std.contract.Equal true
            | doc m%"
              Whether to allow several versions of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          name
            | refs."definitions.string-property-partial"
            | String
            | doc m%"
              A name of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%,
          prevent-decorations
            | Bool
            | doc m%"
              Whether to prevent decorations of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          shell-version
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [ refs."definitions.version-property-partial", String ]
            )
            | doc m%"
              Versions of Cinnamon supported by the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          url
            | js2n.string.MinLength 1
            | js2n.string.Matches "^https://"
            | doc m%"
              A URL of repository of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          uuid
            | js2n.string.Matches "^[^@]+@[^@]+$"
            | doc m%"
              A UUID of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%,
          version
            | refs."definitions.version-property-partial"
            | String
            | doc m%"
              A site of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
          website
            | js2n.string.MinLength 1
            | js2n.string.Matches "^https://"
            | doc m%"
              A site of the extension
              https://projects.linuxmint.com/reference/git/cinnamon-tutorials/write-applet.html
            "%
            | optional,
        }
      ]