# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        std.contract.Sequence
          [
            { _ | js2n.Always },
            js2n.record.FieldsMatch
              "^(?!(False|None|True|and|any_errors_fatal|as|assert|async|await|become|become_exe|become_flags|become_method|become_user|break|check_mode|class|collections|connection|continue|debugger|def|del|diff|elif|else|environment|except|fact_path|finally|for|force_handlers|from|gather_facts|gather_subset|gather_timeout|global|handlers|hosts|if|ignore_errors|ignore_unreachable|import|in|is|lambda|max_fail_percentage|module_defaults|name|no_log|nonlocal|not|or|order|pass|port|post_tasks|pre_tasks|raise|remote_user|return|roles|run_once|serial|strategy|tags|tasks|throttle|timeout|try|vars|vars_files|vars_prompt|while|with|yield)$)[a-zA-Z_][\\w]*$"
          ],
        js2n.string.Matches "^\\$ANSIBLE_VAULT;",
        js2n.Null
      ]