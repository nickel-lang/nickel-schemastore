# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.required_cog" =
        std.contract.Sequence [ { _ | String }, js2n.record.FieldsMatch ".+" ],
    }
    in
  {
      author
        | Array String
        | doc "List of names of authors of the cog"
        | optional,
      description
        | String
        | doc "A long description of the cog or repo. For cogs, this is displayed when a user executes [p]cog info."
        | optional,
      disabled
        | Bool
        | doc "Determines if a cog is available for install."
        | optional,
      end_user_data_statement
        | String
        | doc "A statement explaining what end user data the cog is storing. This is displayed when a user executes [p]cog info. If the statement has changed since last update, user will be informed during the update."
        | optional,
      hidden
        | Bool
        | doc "Determines if a cog is visible in the cog list for a repo."
        | optional,
      install_msg
        | String
        | doc "The message that gets displayed when a cog is installed or a repo is added"
        | optional,
      max_bot_version
        | js2n.string.Matches
          "^(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)((a|b|rc)(0|[1-9][0-9]*))?(\\.post(0|[1-9][0-9]*))?(\\.dev(0|[1-9][0-9]*))?$"
        | doc "Max version number of Red in the format MAJOR.MINOR.MICRO, if min_bot_version is newer than max_bot_version, max_bot_version will be ignored"
        | optional,
      min_bot_version
        | js2n.string.Matches
          "^(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)((a|b|rc)(0|[1-9][0-9]*))?(\\.post(0|[1-9][0-9]*))?(\\.dev(0|[1-9][0-9]*))?$"
        | doc "Min version number of Red in the format MAJOR.MINOR.MICRO"
        | optional,
      min_python_version
        | js2n.array.MaxItems 3
        | js2n.array.MinItems 3
        | Array std.number.Integer
        | doc "Min version number of Python in the format [MAJOR, MINOR, PATCH]"
        | optional,
      required_cogs
        | refs."definitions.required_cog"
        | doc "A dict of required cogs that this cog depends on in the format {cog_name : repo_url}. Downloader will not deal with this functionality but it may be useful for other cogs."
        | optional,
      requirements
        | Array String
        | doc "List of required libraries that are passed to pip on cog install."
        | optional,
      short
        | String
        | doc "A short description of the cog or repo. For cogs, this info is displayed when a user executes [p]cog list"
        | optional,
      tags
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of strings that are related to the functionality of the cog. Used to aid in searching."
        | optional,
      type
        | std.enum.TagOrString
        | [| 'SHARED_LIBRARY, 'COG |]
        | doc "Optional, defaults to COG. Must be either COG or SHARED_LIBRARY. If SHARED_LIBRARY then hidden will be True."
        | optional,
      ..
    }