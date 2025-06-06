# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      allowed_author_re | js2n.Nullable String | optional,
      allowed_scopes | js2n.Nullable (Array String) | optional,
      allowed_types | js2n.Nullable (Array String) | optional,
      hard_line_length
        | js2n.Nullable
          (std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ])
        | optional,
      ignore_author_re | js2n.Nullable String | optional,
      imperative_subject | js2n.Nullable Bool | optional,
      line_length
        | js2n.Nullable
          (std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ])
        | optional,
      merge_commit | js2n.Nullable Bool | optional,
      no_fixup | js2n.Nullable Bool | optional,
      no_wip | js2n.Nullable Bool | optional,
      style
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | optional,
      subject_capitalized | js2n.Nullable Bool | optional,
      subject_length
        | js2n.Nullable
          (std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ])
        | optional,
      subject_not_punctuated | js2n.Nullable Bool | optional,
      ..
    }