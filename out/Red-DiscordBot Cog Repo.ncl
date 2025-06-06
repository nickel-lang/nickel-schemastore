# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
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
      install_msg
        | String
        | doc "The message that gets displayed when a cog is installed or a repo is added"
        | optional,
      short
        | String
        | doc "A short description of the cog or repo. For cogs, this info is displayed when a user executes [p]cog list"
        | optional,
      ..
    }