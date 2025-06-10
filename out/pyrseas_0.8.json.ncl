# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.db" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^cast " =
                      {
                          context | String | optional,
                          depends_on | Array String | optional,
                          description | String | optional,
                          function | String | optional,
                          method | String | optional,
                        },
                    "^event trigger " =
                      {
                          description | String | optional,
                          enabled | Bool | optional,
                          event | String | optional,
                          owner | String | optional,
                          procedure | String | optional,
                          tags | Array String | optional,
                        },
                    "^extension " =
                      {
                          description | String | optional,
                          owner | String | optional,
                          schema | String | optional,
                          version | String | optional,
                        },
                    "^foreign data wrapper " =
                      {
                          description | String | optional,
                          handler | String | optional,
                          options | Array String | optional,
                          owner | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          validator | String | optional,
                        },
                    "^language " =
                      {
                          description | String | optional,
                          owner | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          trusted | Bool | optional,
                        },
                    "^schema " =
                      std.contract.Sequence
                          [ refs."definitions.schema", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.onePriv" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'create,
                    'execute,
                    'usage,
                    'trigger,
                    'references,
                    'truncate,
                    'update,
                    'select,
                    'delete,
                    'insert,
                    'all
                  |]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        all =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        insert =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        delete =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        select =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        update =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        truncate =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        references =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        trigger =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        usage =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        execute =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        create =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { grantable = Bool, },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.privileges" =
        Array (
            {
              _ | std.contract.any_of
                [
                  Array refs."definitions.onePriv",
                  {
                    grantor | String | optional,
                    privs | Array refs."definitions.onePriv" | optional,
                  }
                ]
            }
          ),
      "definitions.schema" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^aggregate " =
                      {
                          arguments | String | optional,
                          combinefunc | String | optional,
                          deseriafunc | String | optional,
                          finalfunc | String | optional,
                          finalfunc_extra | Bool | optional,
                          initcond | String | optional,
                          kind | String | optional,
                          mfinalfunc | String | optional,
                          mfinalfunc_extra | Bool | optional,
                          minitcond | String | optional,
                          minvfunc | String | optional,
                          msfunc | String | optional,
                          msspace | std.number.Integer | optional,
                          mstype | String | optional,
                          owner | String | optional,
                          parallel | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          serialfunc | String | optional,
                          sfunc | String | optional,
                          sortop | String | optional,
                          sspace | std.number.Integer | optional,
                          stype | String | optional,
                        },
                    "^collation " =
                      {
                          description | String | optional,
                          lc_collate | String | optional,
                          lc_ctype | String | optional,
                          owner | String | optional,
                        },
                    "^domain " =
                      {
                          check_constraints
                            | {
                              _ | {
                                depends_on | Array String | optional,
                                expression | String | optional,
                              }
                            }
                            | optional,
                          "default"
                            | std.contract.any_of [ Number, String ]
                            | optional,
                          not_null | Bool | optional,
                          owner | String | optional,
                          type | String | optional,
                        },
                    "^foreign table " =
                      {
                          columns
                            | Array ({ _ | { type | String | optional, } })
                            | optional,
                          description | String | optional,
                          options | Array String | optional,
                          owner | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          server | String | optional,
                        },
                    "^function " =
                      {
                          arguments | String | optional,
                          configuration | Array String | optional,
                          cost | std.number.Integer | optional,
                          description | String | optional,
                          language | String | optional,
                          leakproof | Bool | optional,
                          link_symbol | String | optional,
                          obj_file | String | optional,
                          owner | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          returns | String | optional,
                          rows | std.number.Integer | optional,
                          security_definer | Bool | optional,
                          source | String | optional,
                          strict | Bool | optional,
                          volatility | String | optional,
                        },
                    "^sequence " =
                      {
                          cache_value | std.number.Integer | optional,
                          data_type | String | optional,
                          description | String | optional,
                          increment_by | std.number.Integer | optional,
                          max_value
                            | std.contract.any_of
                              [ std.number.Integer, std.contract.Equal "null" ]
                            | optional,
                          min_value
                            | std.contract.any_of
                              [ std.number.Integer, std.contract.Equal "null" ]
                            | optional,
                          owner | String | optional,
                          owner_column | String | optional,
                          owner_table | String | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          start_value | std.number.Integer | optional,
                        },
                    "^table " =
                      {
                          check_constraints
                            | {
                              _ | {
                                columns | Array String | optional,
                                description | String | optional,
                                expression | String | optional,
                                inherited | Bool | optional,
                              }
                            }
                            | optional,
                          columns
                            | Array (
                              {
                                _ | {
                                  collation | String | optional,
                                  "default" | String | optional,
                                  description | String | optional,
                                  identity
                                    | std.enum.TagOrString
                                    | [| '"by default", 'always |]
                                    | optional,
                                  inherited | Bool | optional,
                                  not_null | Bool | optional,
                                  statistics | std.number.Integer | optional,
                                  type | String | optional,
                                }
                              }
                            )
                            | optional,
                          depends_on | Array String | optional,
                          description | String | optional,
                          foreign_keys
                            | {
                              _ | {
                                columns | Array String | optional,
                                description | String | optional,
                                on_delete | String | optional,
                                on_update | String | optional,
                                references
                                  | {
                                    columns | Array String | optional,
                                    schema | String | optional,
                                    table | String | optional,
                                  }
                                  | optional,
                              }
                            }
                            | optional,
                          indexes
                            | {
                              _ | {
                                access_method | String | optional,
                                description | String | optional,
                                keys | Array String | optional,
                                unique | Bool | optional,
                              }
                            }
                            | optional,
                          inherits | Array String | optional,
                          options | Array String | optional,
                          owner | String | optional,
                          partition_bound_spec | String | optional,
                          partition_by | String | optional,
                          partition_cols | Array String | optional,
                          partition_exprs | String | optional,
                          primary_key
                            | {
                              _ | {
                                cluster | Bool | optional,
                                columns | Array String | optional,
                              }
                            }
                            | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          rules
                            | {
                              _ | {
                                actions | String | optional,
                                condition | String | optional,
                                depends_on | Array String | optional,
                                description | String | optional,
                                event | String | optional,
                                instead | Bool | optional,
                              }
                            }
                            | optional,
                          tablespace | String | optional,
                          triggers
                            | {
                              _ | {
                                description | String | optional,
                                events | Array String | optional,
                                level | String | optional,
                                procedure | String | optional,
                                timing | String | optional,
                              }
                            }
                            | optional,
                          unique_constraints
                            | {
                              _ | {
                                columns | Array String | optional,
                                description | String | optional,
                              }
                            }
                            | optional,
                          unlogged | Bool | optional,
                        },
                    "^type " =
                      {
                          alignment | String | optional,
                          analyze | String | optional,
                          attributes
                            | Array (
                              {
                                _ | {
                                  oldname | String | optional,
                                  type | String | optional,
                                }
                              }
                            )
                            | optional,
                          canonical | String | optional,
                          category | String | optional,
                          "default" | String | optional,
                          delimiter | String | optional,
                          description | String | optional,
                          input | String | optional,
                          internallength
                            | std.contract.any_of [ String, std.number.Integer ]
                            | optional,
                          labels | Array String | optional,
                          not_null | Bool | optional,
                          oldname | String | optional,
                          output | String | optional,
                          owner | String | optional,
                          preferred | Bool | optional,
                          privileges
                            | refs."definitions.privileges"
                            | Array Dyn
                            | optional,
                          receive | String | optional,
                          send | String | optional,
                          storage | String | optional,
                          subtype | String | optional,
                          subtype_diff | String | optional,
                          type | String | optional,
                          typmod_in | String | optional,
                          typmod_out | String | optional,
                        },
                    "^view " =
                      {
                          definition | String | optional,
                          depends_on | Array String | optional,
                          description | String | optional,
                          owner | String | optional,
                        },
                  },
              properties =
                {
                    description = String,
                    owner = String,
                    privileges =
                      std.contract.Sequence
                          [ refs."definitions.privileges", Array Dyn ],
                  },
              required = {},
            },
    }
    in
  js2n.OneOf [ refs."definitions.db", refs."definitions.schema" ]