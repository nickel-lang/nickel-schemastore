# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional =
          'Some
              {
                defaults
                  | {
                    _access | String | optional,
                    _controller | String | optional,
                    _entity_form | String | optional,
                    _entity_list | String | optional,
                    _entity_view | String | optional,
                    _form | String | optional,
                    _title | String | optional,
                    _title_callback | String | optional,
                    ..
                  }
                  | optional,
                methods
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'DELETE, 'PUT, 'PATCH, 'POST, 'GET |]
                      ]
                  )
                  | optional,
                options
                  | {
                    _admin_route | Bool | optional,
                    _auth | js2n.array.UniqueItems | Array String | optional,
                    _maintenance_access | Bool | optional,
                    _no_path | Bool | optional,
                    _node_operation_route | Bool | optional,
                    no_cache | Bool | optional,
                    parameters | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                path | String | optional,
                requirements
                  | {
                    _access | String | optional,
                    _access_theme | String | optional,
                    _csrf_token | String | optional,
                    _custom_access | String | optional,
                    _entity_access | String | optional,
                    _entity_create_access | String | optional,
                    _entity_delete_multiple_access | String | optional,
                    _format | String | optional,
                    _module_dependencies | String | optional,
                    _permission | String | optional,
                    _user_is_logged_in | String | optional,
                    ..
                  }
                  | optional,
              },
        patterns = {},
        properties =
          {
              route_callbacks =
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            },
        required = {},
      }