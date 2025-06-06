# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      action_groups
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "A mapping of groups and the list of action plugin and module names they contain. They may also have a special ‘metadata’ dictionary in the list, which can be used to include actions from other groups."
        | optional,
      import_redirection
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "A mapping of names for Python import statements and their redirected locations."
        | optional,
      plugin_routing
        | {
          inventory | js2n.Always | optional,
          module_utils | js2n.Always | optional,
          modules | js2n.Always | optional,
          ..
        }
        | optional,
      requires_ansible | js2n.string.Matches "^[^\\s]*$" | optional,
    }