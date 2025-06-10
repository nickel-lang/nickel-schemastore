# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aliases
        | Array String
        | doc "Alternate names/labels for the element. These do not alter the semantics of the schema, but may be useful to support search and alignment."
        | optional,
      alt_descriptions
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        }
        | doc "A sourced alternative description for an element"
        | optional,
      annotations
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "a collection of tag/text tuples with the semantics of OWL Annotation"
        | optional,
      broad_mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have broader meaning."
        | optional,
      categories
        | Array String
        | doc "Controlled terms used to categorize an element."
        | optional,
      classes
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null
            ]
        }
        | doc "An index to the collection of all class definitions in the schema"
        | optional,
      close_mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have close meaning."
        | optional,
      comments
        | Array String
        | doc "notes and comments about an element intended primarily for external consumption"
        | optional,
      conforms_to
        | String
        | doc "An established standard to which the element conforms."
        | optional,
      contributors
        | Array String
        | doc "agent that contributed to the element"
        | optional,
      created_by | String | doc "agent that created the element" | optional,
      created_on
        | String
        | doc "time at which the element was created"
        | optional,
      default_curi_maps
        | Array String
        | doc "ordered list of prefixcommon biocontexts to be fetched to resolve id prefixes and inline prefix variables"
        | optional,
      default_prefix
        | String
        | doc "The prefix that is used for all elements within a schema"
        | optional,
      default_range
        | String
        | doc "default slot range to be used if range element is omitted from a slot definition"
        | optional,
      definition_uri
        | String
        | doc "The native URI of the element. This is always within the namespace of the containing schema. Contrast with the assigned URI, via class_uri or slot_uri"
        | optional,
      deprecated
        | String
        | doc "Description of why and when this element will no longer be used"
        | optional,
      deprecated_element_has_exact_replacement
        | String
        | doc "When an element is deprecated, it can be automatically replaced by this uri or curie"
        | optional,
      deprecated_element_has_possible_replacement
        | String
        | doc "When an element is deprecated, it can be potentially replaced by this uri or curie"
        | optional,
      description
        | String
        | doc "a textual description of the element's purpose and use"
        | optional,
      emit_prefixes
        | Array String
        | doc "a list of Curie prefixes that are used in the representation of instances of the model.  All prefixes in this list are added to the prefix sections of the target models."
        | optional,
      enums
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null
            ]
        }
        | doc "An index to the collection of all enum definitions in the schema"
        | optional,
      exact_mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have identical meaning."
        | optional,
      examples
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "example usages of an element"
        | optional,
      extensions
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "a tag/text tuple attached to an arbitrary element"
        | optional,
      from_schema
        | String
        | doc "id of the schema that defined the element"
        | optional,
      generation_date
        | String
        | doc "date and time that the schema was loaded/generated"
        | optional,
      id | String | doc "The official schema URI",
      id_prefixes
        | Array String
        | doc "An allowed list of prefixes for which identifiers must conform. The identifier of this class or slot must begin with the URIs referenced by this prefix"
        | optional,
      id_prefixes_are_closed
        | Bool
        | doc "If true, then the id_prefixes slot is treated as being closed, and any use of an id that does not have this prefix is considered a violation."
        | optional,
      implements
        | Array String
        | doc "An element in another schema which this element conforms to. The referenced element is not imported into the schema for the implementing element. However, the referenced schema may be used to check conformance of the implementing element."
        | optional,
      imported_from
        | String
        | doc "the imports entry that this element was derived from.  Empty means primary source"
        | optional,
      imports
        | Array String
        | doc "A list of schemas that are to be included in this schema"
        | optional,
      in_language
        | String
        | doc "the primary language used in the sources"
        | optional,
      in_subset
        | Array String
        | doc "used to indicate membership of a term in a defined subset of terms used for a particular domain or application."
        | optional,
      instantiates
        | Array String
        | doc "An element in another schema which this element instantiates."
        | optional,
      keywords
        | Array String
        | doc "Keywords or tags used to describe the element"
        | optional,
      last_updated_on
        | String
        | doc "time at which the element was last updated"
        | optional,
      license | String | doc "license for the schema" | optional,
      local_names
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        }
        | optional,
      mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have comparable meaning. These may include terms that are precisely equivalent, broader or narrower in meaning, or otherwise semantically related but not equivalent from a strict ontological perspective."
        | optional,
      metamodel_version
        | String
        | doc "Version of the metamodel used to load the schema"
        | optional,
      modified_by | String | doc "agent that modified the element" | optional,
      name
        | String
        | doc "a unique name for the schema that is both human-readable and consists of only characters from the NCName set",
      narrow_mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have narrower meaning."
        | optional,
      notes
        | Array String
        | doc "editorial notes about an element intended primarily for internal consumption"
        | optional,
      prefixes
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        }
        | doc "A collection of prefix expansions that specify how CURIEs can be expanded to URIs"
        | optional,
      rank
        | std.number.Integer
        | doc "the relative order in which the element occurs, lower values are given precedence"
        | optional,
      related_mappings
        | Array String
        | doc "A list of terms from different schemas or terminology systems that have related meaning."
        | optional,
      see_also
        | Array String
        | doc "A list of related entities or URLs that may be of relevance"
        | optional,
      settings
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        }
        | doc "A collection of global variable settings"
        | optional,
      slot_names_unique
        | Bool
        | doc "if true then induced/mangled slot names are not created for class_usage and attributes"
        | optional,
      slots
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null
            ]
        }
        | doc "An index to the collection of all slot definitions in the schema"
        | optional,
      source
        | String
        | doc "A related resource from which the element is derived."
        | optional,
      source_file
        | String
        | doc "name, uri or description of the source of the schema"
        | optional,
      source_file_date
        | String
        | doc "modification date of the source of the schema"
        | optional,
      source_file_size
        | std.number.Integer
        | doc "size in bytes of the source of the schema"
        | optional,
      status | String | doc "status of the element" | optional,
      structured_aliases
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "A list of structured_alias objects, used to provide aliases in conjunction with additional metadata."
        | optional,
      subsets
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null
            ]
        }
        | doc "An index to the collection of all subset definitions in the schema"
        | optional,
      title
        | String
        | doc "A concise human-readable display label for the element. The title should mirror the name, and should use ordinary textual punctuation."
        | optional,
      todos
        | Array String
        | doc "Outstanding issues that needs resolution"
        | optional,
      types
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null
            ]
        }
        | doc "An index to the collection of all type definitions in the schema"
        | optional,
      version | String | doc "particular version of schema" | optional,
      ..
    }