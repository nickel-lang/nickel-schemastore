# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      display_relative_path | Bool | optional,
      enable_list | Array String | optional,
      exclude_paths | Array String | optional,
      extra_vars | { _ | Dyn } | optional,
      kinds | Array ({ _ | String }) | optional,
      loop_var_prefix | String | optional,
      max_block_depth | std.number.Integer | optional,
      mock_modules | Array String | optional,
      mock_roles | Array String | optional,
      offline | Bool | optional,
      only_builtins_allow_collections | Array String | optional,
      only_builtins_allow_modules | Array String | optional,
      parseable | Bool | optional,
      profile
        | js2n.Enum
          [ "min", "basic", "moderate", "safety", "shared", "production", null ]
        | optional,
      progressive | Bool | optional,
      project_dir | js2n.Nullable String | optional,
      quiet | Bool | optional,
      rules
        | js2n.record.PropertyNames
          (js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'yaml,
                    'var-naming,
                    'syntax-check,
                    'schema,
                    '"sanity[cannot-ignore]",
                    '"sanity[bad-ignore]",
                    'sanity,
                    '"run-once[task]",
                    '"run-once[play]",
                    'run-once,
                    'role-name,
                    'risky-shell-pipe,
                    'risky-octal,
                    'risky-file-permissions,
                    'playbook-extension,
                    'partial-become,
                    'parser-error,
                    'package-latest,
                    'only-builtins,
                    'no-tabs,
                    'no-same-owner,
                    'no-relative-paths,
                    'no-prompting,
                    'no-log-password,
                    'no-jinja-when,
                    'no-handler,
                    'no-changed-when,
                    '"name[template]",
                    '"name[prefix]",
                    '"name[play]",
                    '"name[casing]",
                    'name,
                    'meta-video-links,
                    'meta-runtime,
                    'meta-no-tags,
                    'meta-incorrect,
                    '"loop-var-prefix[wrong]",
                    '"loop-var-prefix[missing]",
                    'loop-var-prefix,
                    '"load-failure[not-found]",
                    'load-failure,
                    'literal-compare,
                    'latest,
                    'key-order,
                    '"jinja[spacing]",
                    '"jinja[invalid]",
                    'jinja,
                    'internal-error,
                    'inline-env-var,
                    'ignore-errors,
                    '"galaxy[version-missing]",
                    '"galaxy[version-incorrect]",
                    '"galaxy[tags]",
                    '"galaxy[no-runtime]",
                    '"galaxy[no-changelog]",
                    'galaxy,
                    '"fqcn[keyword]",
                    '"fqcn[canonical]",
                    '"fqcn[action]",
                    '"fqcn[action-core]",
                    'fqcn,
                    'empty-string-compare,
                    'deprecated-module,
                    'deprecated-local-action,
                    'deprecated-bare-vars,
                    'command-instead-of-shell,
                    'command-instead-of-module
                  |]
                ],
              js2n.string.Matches "^[a-z0-9-\\[\\]]+$"
            ])
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
      rulesdir | Array String | optional,
      sarif_file | js2n.Nullable String | optional,
      skip_action_validation | Bool | optional,
      skip_list | Array String | optional,
      strict | Bool | optional,
      supported_ansible_also | Array String | optional,
      tags | Array String | optional,
      task_name_prefix | String | optional,
      use_default_rules | Bool | optional,
      var_naming_pattern | String | optional,
      verbosity | std.number.Integer | optional,
      warn_list | Array String | optional,
      write_exclude_list | Array String | optional,
      write_list | Array String | optional,
    }