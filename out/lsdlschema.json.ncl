# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "anyOf.0.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Adjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.0.definitions.adjectivePhrasingProperties",
                ..
              }
            ],
      "anyOf.0.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.0.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            AdverbPhrases
              | refs."anyOf.0.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            Antonyms
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.0.definitions.adverbAntonymPhraseProperty" =
        {
            Antonyms
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)",
            Measurement
              | refs."anyOf.0.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.0.definitions.adverbPhrase" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.adverbPhraseProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.adverbAntonymPhraseProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.0.definitions.adverbPhraseProperty" =
        {
            Adverbs
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (high measurement)",
            Antonyms
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)"
              | optional,
            Measurement
              | refs."anyOf.0.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.0.definitions.adverbPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.0.definitions.adverbPhrase"
            ],
      "anyOf.0.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.0.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
            State
              | refs."anyOf.0.definitions.agentState"
              | String
              | doc "Indicates whether a modeling environment should use the agent to improve the linguistic schema."
              | optional,
            Version
              | refs."anyOf.0.definitions.nonEmptyString"
              | String
              | doc "Version information provided by the agent"
              | optional,
          },
      "anyOf.0.definitions.agentState" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Disabled, 'Enabled |] ],
      "anyOf.0.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.agentProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.0.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Attribute",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.0.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.0.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.0.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.0.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.0.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.0.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.0.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.0.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.0.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.0.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.0.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.0.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.0.definitions.dateTime" = String,
      "anyOf.0.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicAdjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.0.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.0.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.0.definitions.dynamicImprovement" =
        {
            RuntimeUnderstanding
              | std.enum.TagOrString
              | [| 'None, 'Full, 'Default |]
              | doc "Indicates which heuristics and external data should be used to interpret parts of the user utterance that are not understood."
              | optional,
            Schema
              | std.enum.TagOrString
              | [| 'None, 'Full, 'Default |]
              | doc "Indicates which heuristics should be run to automatically improve the linguistic schema."
              | optional,
          },
      "anyOf.0.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicNoun",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.0.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.0.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.0.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.entity", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.entity" =
        {
            Definition | refs."anyOf.0.definitions.entityDefinition",
            ImplicitGroupings
              | refs."anyOf.0.definitions.entityReferences"
              | Array Dyn
              | doc "A list of related entities which are used to group the query when this entity is shown"
              | optional,
            Instances
              | refs."anyOf.0.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.0.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.0.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.0.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.0.definitions.conceptualEntityBinding",
              refs."anyOf.0.definitions.conceptualPropertyBinding",
              refs."anyOf.0.definitions.hierarchyBinding",
              refs."anyOf.0.definitions.hierarchyLevelBinding"
            ],
      "anyOf.0.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.entityReferences" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.0.definitions.entityReference"
            ],
      "anyOf.0.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.0.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.0.definitions.example" ],
      "anyOf.0.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.0.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.0.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.0.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.exampleProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.0.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.0.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.0.definitions.fullRoleReference" =
        { Role | refs."anyOf.0.definitions.identifier" | String, },
      "anyOf.0.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.0.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.0.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.termProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.0.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.0.definitions.visibility" | String,
            ..
          },
      "anyOf.0.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.nonEmptyString", String ]),
              { _ | refs."anyOf.0.definitions.globalSubstitutionProperties" }
            ],
      "anyOf.0.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.0.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.0.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.0.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.0.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.0.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.0.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.0.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.0.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.0.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.0.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.0.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.0.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.0.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.0.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.0.definitions.lsdlReference" = {},
      "anyOf.0.definitions.modelItemReference" = String,
      "anyOf.0.definitions.namePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Name",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.0.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.0.definitions.namespaces" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.lsdlReference", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.0.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Noun",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.0.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.0.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.0.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.0.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.0.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.0.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.0.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.0.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.phrasingProperties" =
        {
            ID
              | refs."anyOf.0.definitions.identifier"
              | String
              | doc "The ID of the phrasing"
              | optional,
            LastModified
              | refs."anyOf.0.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this phrasing was modified."
              | optional,
            Source
              | refs."anyOf.0.definitions.source"
              | doc "The source of the phrasing"
              | optional,
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.0.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.0.definitions.phrasingPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Source,
                'ID,
                'LastModified,
                'TemplateSchema,
                'Weight,
                'State
              |]
            ],
      "anyOf.0.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.0.definitions.phrasing"
            ],
      "anyOf.0.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.0.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.0.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.0.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Preposition",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.0.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.0.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.0.definitions.relationship" =
        {
            Binding
              | refs."anyOf.0.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.0.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            LastModified
              | refs."anyOf.0.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this relationship was modified."
              | optional,
            Phrasings
              | refs."anyOf.0.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.0.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.0.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.0.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.0.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.0.definitions.relationship", { _ | Dyn } ]
              }
            ],
      "anyOf.0.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.0.definitions.identifier", String ]),
              { _ | refs."anyOf.0.definitions.role" }
            ],
      "anyOf.0.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.0.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.0.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.0.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.0.definitions.templateSchema" = String,
      "anyOf.0.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.0.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.0.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.0.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.0.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.0.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.0.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Adverb, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.0.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.0.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.0.definitions.term" ],
      "anyOf.0.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.0.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.0.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.0.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.0.definitions.nullableTextValue"
                ]
            ],
      "anyOf.0.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.0.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.0.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.0.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.0.definitions.textValues",
              refs."anyOf.0.definitions.numberValues",
              refs."anyOf.0.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.0.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Verb",
                    std.contract.Sequence
                      [
                        refs."anyOf.0.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.0.definitions.phrasingProperties",
              {
                Verb
                  | refs."anyOf.0.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.0.definitions.verbPhrasingProperties" =
        {
            AdverbPhrases
              | refs."anyOf.0.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            IndirectObject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.0.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.0.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.0.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.0.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.0.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.0.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.0.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.0.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.1.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Adjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.1.definitions.adjectivePhrasingProperties",
                ..
              }
            ],
      "anyOf.1.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.1.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            AdverbPhrases
              | refs."anyOf.1.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            Antonyms
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.1.definitions.adverbAntonymPhraseProperty" =
        {
            Antonyms
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)",
            Measurement
              | refs."anyOf.1.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.1.definitions.adverbPhrase" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.adverbPhraseProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.adverbAntonymPhraseProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.1.definitions.adverbPhraseProperty" =
        {
            Adverbs
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (high measurement)",
            Antonyms
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)"
              | optional,
            Measurement
              | refs."anyOf.1.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.1.definitions.adverbPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.1.definitions.adverbPhrase"
            ],
      "anyOf.1.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.1.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
            State
              | refs."anyOf.1.definitions.agentState"
              | String
              | doc "Indicates whether a modeling environment should use the agent to improve the linguistic schema."
              | optional,
          },
      "anyOf.1.definitions.agentState" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Disabled, 'Enabled |] ],
      "anyOf.1.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.agentProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.1.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Attribute",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.1.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.1.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.1.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.1.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.1.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.1.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.1.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.1.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.1.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.1.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.1.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.1.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.1.definitions.dateTime" = String,
      "anyOf.1.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicAdjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.1.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.1.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.1.definitions.dynamicImprovement" =
        {
            RuntimeUnderstanding
              | std.enum.TagOrString
              | [| 'None, 'Full, 'Default |]
              | doc "Indicates which heuristics and external data should be used to interpret parts of the user utterance that are not understood."
              | optional,
            Schema
              | std.enum.TagOrString
              | [| 'None, 'Full, 'Default |]
              | doc "Indicates which heuristics should be run to automatically improve the linguistic schema."
              | optional,
          },
      "anyOf.1.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicNoun",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.1.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.1.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.1.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.entity", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.entity" =
        {
            Definition | refs."anyOf.1.definitions.entityDefinition",
            ImplicitGroupings
              | refs."anyOf.1.definitions.entityReferences"
              | Array Dyn
              | doc "A list of related entities which are used to group the query when this entity is shown"
              | optional,
            Instances
              | refs."anyOf.1.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.1.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.1.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.1.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.1.definitions.conceptualEntityBinding",
              refs."anyOf.1.definitions.conceptualPropertyBinding",
              refs."anyOf.1.definitions.hierarchyBinding",
              refs."anyOf.1.definitions.hierarchyLevelBinding"
            ],
      "anyOf.1.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.entityReferences" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.1.definitions.entityReference"
            ],
      "anyOf.1.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.1.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.1.definitions.example" ],
      "anyOf.1.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.1.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.1.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.1.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.exampleProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.1.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.1.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.1.definitions.fullRoleReference" =
        { Role | refs."anyOf.1.definitions.identifier" | String, },
      "anyOf.1.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.1.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.1.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.termProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.1.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.1.definitions.visibility" | String,
            ..
          },
      "anyOf.1.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.nonEmptyString", String ]),
              { _ | refs."anyOf.1.definitions.globalSubstitutionProperties" }
            ],
      "anyOf.1.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.1.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.1.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.1.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.1.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.1.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.1.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.1.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.1.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.1.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.1.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.1.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.1.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.1.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.1.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.1.definitions.lsdlReference" = {},
      "anyOf.1.definitions.modelItemReference" = String,
      "anyOf.1.definitions.namePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Name",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.1.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.1.definitions.namespaces" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.lsdlReference", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.1.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Noun",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.1.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.1.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.1.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.1.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.1.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.1.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.1.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.1.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.phrasingProperties" =
        {
            ID
              | refs."anyOf.1.definitions.identifier"
              | String
              | doc "The ID of the phrasing"
              | optional,
            LastModified
              | refs."anyOf.1.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this phrasing was modified."
              | optional,
            Source
              | refs."anyOf.1.definitions.source"
              | doc "The source of the phrasing"
              | optional,
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.1.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.1.definitions.phrasingPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Source,
                'ID,
                'LastModified,
                'TemplateSchema,
                'Weight,
                'State
              |]
            ],
      "anyOf.1.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.1.definitions.phrasing"
            ],
      "anyOf.1.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.1.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.1.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.1.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Preposition",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.1.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.1.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.1.definitions.relationship" =
        {
            Binding
              | refs."anyOf.1.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.1.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            LastModified
              | refs."anyOf.1.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this relationship was modified."
              | optional,
            Phrasings
              | refs."anyOf.1.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.1.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.1.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.1.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.1.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.1.definitions.relationship", { _ | Dyn } ]
              }
            ],
      "anyOf.1.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.1.definitions.identifier", String ]),
              { _ | refs."anyOf.1.definitions.role" }
            ],
      "anyOf.1.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.1.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.1.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.1.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.1.definitions.templateSchema" = String,
      "anyOf.1.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.1.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.1.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.1.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.1.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.1.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.1.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Adverb, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.1.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.1.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.1.definitions.term" ],
      "anyOf.1.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.1.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.1.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.1.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.1.definitions.nullableTextValue"
                ]
            ],
      "anyOf.1.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.1.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.1.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.1.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.1.definitions.textValues",
              refs."anyOf.1.definitions.numberValues",
              refs."anyOf.1.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.1.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Verb",
                    std.contract.Sequence
                      [
                        refs."anyOf.1.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.1.definitions.phrasingProperties",
              {
                Verb
                  | refs."anyOf.1.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.1.definitions.verbPhrasingProperties" =
        {
            AdverbPhrases
              | refs."anyOf.1.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            IndirectObject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.1.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.1.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.1.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.1.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.1.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.1.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.1.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.1.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.10.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.10.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Adjectives =
                          std.contract.Sequence
                              [ refs."anyOf.10.definitions.terms", Array Dyn ],
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.10.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.10.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.10.definitions.roleReference",
                      },
                  required = { Adjectives = true, Subject = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.10.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.10.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.10.definitions.roleReference",
                      },
                  required = { Antonyms = true, Subject = true, },
                }
            ],
      "anyOf.10.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.10.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.10.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.10.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.10.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.10.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.10.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.10.definitions.condition" =
        {
            Operator
              | std.enum.TagOrString
              | [|
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.10.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.10.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.10.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.10.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.10.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.10.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.10.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.10.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.10.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.10.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.10.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.entity" =
        {
            Binding
              | js2n.OneOf
                [
                  refs."anyOf.10.definitions.conceptualEntityBinding",
                  refs."anyOf.10.definitions.conceptualPropertyBinding",
                  refs."anyOf.10.definitions.hierarchyBinding",
                  refs."anyOf.10.definitions.hierarchyLevelBinding"
                ]
              | doc "The conceptual model object which represents the entity",
            Instances
              | refs."anyOf.10.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.10.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Weight
              | refs."anyOf.10.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.10.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.10.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.10.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.10.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.10.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.10.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.10.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.10.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.10.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.10.definitions.fullRoleReference" =
        { Role | refs."anyOf.10.definitions.identifier" | String, },
      "anyOf.10.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.10.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.10.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.10.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.10.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    refs."anyOf.10.definitions.globalSubstitution",
                    { _ | Dyn }
                  ]
              )
            ],
      "anyOf.10.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.10.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.10.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.10.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.10.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.10.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.10.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.10.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.10.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.10.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.10.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.10.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.10.definitions.lsdlReference" = {},
      "anyOf.10.definitions.modelItemReference" = String,
      "anyOf.10.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.10.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.10.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.10.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.10.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.10.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.10.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.10.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.10.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.10.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.10.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.10.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.10.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.10.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.10.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.10.definitions.dynamicNounPhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.10.definitions.prepositionPhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.10.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.10.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.10.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.10.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.10.definitions.phrasing"
            ],
      "anyOf.10.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.10.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.10.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.10.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.10.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.10.definitions.relationship" =
        {
            Binding
              | refs."anyOf.10.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.10.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.10.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.10.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.10.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.10.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.10.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.10.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.10.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.10.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.10.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.10.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.10.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.10.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.10.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.10.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.10.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.10.definitions.templateSchema" = String,
      "anyOf.10.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.10.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.10.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.10.definitions.termProperties" =
        {
            State
              | refs."anyOf.10.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.10.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.10.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.10.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.10.definitions.term" ],
      "anyOf.10.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.10.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.10.definitions.nullableTextValue"
                ]
            ],
      "anyOf.10.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.10.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.10.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.10.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.10.definitions.textValues",
              refs."anyOf.10.definitions.numberValues",
              refs."anyOf.10.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.10.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.10.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.10.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.10.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.10.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.10.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.10.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.10.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.11.definitions.adjectivePhrasing" =
        {
            Adjective | refs."anyOf.11.definitions.adjectivePhrasingProperties",
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Adjectives =
                          std.contract.Sequence
                              [ refs."anyOf.11.definitions.words", Array Dyn ],
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.11.definitions.words", Array Dyn ],
                        Measurement = refs."anyOf.11.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.11.definitions.roleReference",
                      },
                  required = { Adjectives = true, Subject = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.11.definitions.words", Array Dyn ],
                        Measurement = refs."anyOf.11.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.11.definitions.roleReference",
                      },
                  required = { Antonyms = true, Subject = true, },
                }
            ],
      "anyOf.11.definitions.attributePhrasing" =
        {
            Attribute
              | refs."anyOf.11.definitions.attributePhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.11.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.11.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.11.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.11.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.11.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.11.definitions.condition" =
        {
            Operator
              | std.enum.TagOrString
              | [|
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.11.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.11.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.11.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.11.definitions.dynamicAdjectivePhrasing" =
        {
            DynamicAdjective
              | refs."anyOf.11.definitions.dynamicAdjectivePhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.11.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.11.definitions.dynamicNounPhrasing" =
        {
            DynamicNoun
              | refs."anyOf.11.definitions.dynamicNounPhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.11.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.11.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.11.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.entity" =
        {
            Binding
              | js2n.OneOf
                [
                  refs."anyOf.11.definitions.conceptualEntityBinding",
                  refs."anyOf.11.definitions.conceptualPropertyBinding",
                  refs."anyOf.11.definitions.hierarchyBinding",
                  refs."anyOf.11.definitions.hierarchyLevelBinding"
                ]
              | doc "The conceptual model object which represents the entity",
            Instances
              | refs."anyOf.11.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            Weight
              | refs."anyOf.11.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
            Words
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Words which can be used to refer to this entity"
              | optional,
          },
      "anyOf.11.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.11.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.11.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.11.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.11.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.11.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.11.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
          },
      "anyOf.11.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.11.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.11.definitions.fullRoleReference" =
        { Role | refs."anyOf.11.definitions.identifier" | String, },
      "anyOf.11.definitions.fullWord" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.11.definitions.wordProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.11.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.11.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.11.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    refs."anyOf.11.definitions.globalSubstitution",
                    { _ | Dyn }
                  ]
              )
            ],
      "anyOf.11.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.11.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.11.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.11.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.11.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.11.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains words that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.11.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.11.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.11.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.11.definitions.instances" =
        {
            Synonyms
              | refs."anyOf.11.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.11.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.11.definitions.lsdlReference" = {},
      "anyOf.11.definitions.modelItemReference" = String,
      "anyOf.11.definitions.namePhrasing" =
        {
            Name
              | refs."anyOf.11.definitions.namePhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.11.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.11.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.11.definitions.nounPhrasing" =
        {
            Noun
              | refs."anyOf.11.definitions.nounPhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.11.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.11.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.11.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.11.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.11.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.11.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.11.definitions.phrasing" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."anyOf.11.definitions.attributePhrasing",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."anyOf.11.definitions.namePhrasing", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."anyOf.11.definitions.adjectivePhrasing",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."anyOf.11.definitions.dynamicAdjectivePhrasing",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."anyOf.11.definitions.nounPhrasing", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."anyOf.11.definitions.dynamicNounPhrasing",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."anyOf.11.definitions.prepositionPhrasing",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."anyOf.11.definitions.verbPhrasing", { _ | Dyn } ]
                ],
              refs."anyOf.11.definitions.sharedPhrasingProperties",
              { _ | Dyn }
            ],
      "anyOf.11.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.11.definitions.phrasing", { _ | Dyn } ]
              )
            ],
      "anyOf.11.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.11.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.11.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.11.definitions.prepositionPhrasing" =
        {
            Preposition
              | refs."anyOf.11.definitions.prepositionPhrasingProperties"
              | { _ | Dyn },
            State | js2n.Always | optional,
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.11.definitions.relationship" =
        {
            Binding
              | refs."anyOf.11.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.11.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.11.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.11.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.11.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            Weight
              | refs."anyOf.11.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.11.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.11.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.11.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.11.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.11.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.11.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.11.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.11.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.11.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.11.definitions.semanticSlots" =
        {
            Occurrences
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.11.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.11.definitions.sharedPhrasingProperties" =
        {
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            Weight
              | refs."anyOf.11.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.11.definitions.state" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Deleted, 'Generated, 'UserAuthored |] ],
      "anyOf.11.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.11.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.11.definitions.nullableTextValue"
                ]
            ],
      "anyOf.11.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.11.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.11.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.11.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.11.definitions.textValues",
              refs."anyOf.11.definitions.numberValues",
              refs."anyOf.11.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.11.definitions.verbPhrasing" =
        {
            State | js2n.Always | optional,
            Verb
              | refs."anyOf.11.definitions.verbPhrasingProperties"
              | { _ | Dyn },
            Weight | js2n.Always | optional,
          },
      "anyOf.11.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.11.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.11.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.11.definitions.words"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.11.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.11.definitions.word" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.11.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.11.definitions.fullWord", { _ | Dyn } ]
            ],
      "anyOf.11.definitions.wordProperties" =
        {
            State
              | refs."anyOf.11.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.11.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.11.definitions.words" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.11.definitions.word" ],
      "anyOf.2.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Adjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.2.definitions.adjectivePhrasingProperties",
                ..
              }
            ],
      "anyOf.2.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.2.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            AdverbPhrases
              | refs."anyOf.2.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            Antonyms
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.2.definitions.adverbAntonymPhraseProperty" =
        {
            Antonyms
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)",
            Measurement
              | refs."anyOf.2.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.2.definitions.adverbPhrase" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.adverbPhraseProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.adverbAntonymPhraseProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.2.definitions.adverbPhraseProperty" =
        {
            Adverbs
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (high measurement)",
            Antonyms
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)"
              | optional,
            Measurement
              | refs."anyOf.2.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.2.definitions.adverbPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.2.definitions.adverbPhrase"
            ],
      "anyOf.2.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.2.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
            State
              | refs."anyOf.2.definitions.agentState"
              | String
              | doc "Indicates whether a modeling environment should use the agent to improve the linguistic schema."
              | optional,
          },
      "anyOf.2.definitions.agentState" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Disabled, 'Enabled |] ],
      "anyOf.2.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.agentProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.2.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Attribute",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.2.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.2.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.2.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.2.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.2.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.2.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.2.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.2.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.2.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.2.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.2.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.2.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.2.definitions.dateTime" = String,
      "anyOf.2.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicAdjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.2.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.2.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.2.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicNoun",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.2.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.2.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.2.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.entity", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.entity" =
        {
            Definition | refs."anyOf.2.definitions.entityDefinition",
            ImplicitGroupings
              | refs."anyOf.2.definitions.entityReferences"
              | Array Dyn
              | doc "A list of related entities which are used to group the query when this entity is shown"
              | optional,
            Instances
              | refs."anyOf.2.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.2.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.2.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.2.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.2.definitions.conceptualEntityBinding",
              refs."anyOf.2.definitions.conceptualPropertyBinding",
              refs."anyOf.2.definitions.hierarchyBinding",
              refs."anyOf.2.definitions.hierarchyLevelBinding"
            ],
      "anyOf.2.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.entityReferences" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.2.definitions.entityReference"
            ],
      "anyOf.2.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.2.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.2.definitions.example" ],
      "anyOf.2.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.2.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.2.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.2.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.exampleProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.2.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.2.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.2.definitions.fullRoleReference" =
        { Role | refs."anyOf.2.definitions.identifier" | String, },
      "anyOf.2.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.2.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.2.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.termProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.2.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.2.definitions.visibility" | String,
            ..
          },
      "anyOf.2.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.nonEmptyString", String ]),
              { _ | refs."anyOf.2.definitions.globalSubstitutionProperties" }
            ],
      "anyOf.2.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.2.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.2.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.2.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.2.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.2.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.2.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.2.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.2.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.2.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.2.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.2.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.2.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.2.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.2.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.2.definitions.lsdlReference" = {},
      "anyOf.2.definitions.modelItemReference" = String,
      "anyOf.2.definitions.namePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Name",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.2.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.2.definitions.namespaces" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.lsdlReference", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.2.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Noun",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.2.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.2.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.2.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.2.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.2.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.2.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.2.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.2.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.phrasingProperties" =
        {
            ID
              | refs."anyOf.2.definitions.identifier"
              | String
              | doc "The ID of the phrasing"
              | optional,
            LastModified
              | refs."anyOf.2.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this phrasing was modified."
              | optional,
            Source
              | refs."anyOf.2.definitions.source"
              | doc "The source of the phrasing"
              | optional,
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.2.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.2.definitions.phrasingPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Source,
                'ID,
                'LastModified,
                'TemplateSchema,
                'Weight,
                'State
              |]
            ],
      "anyOf.2.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.2.definitions.phrasing"
            ],
      "anyOf.2.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.2.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.2.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.2.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Preposition",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.2.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.2.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.2.definitions.relationship" =
        {
            Binding
              | refs."anyOf.2.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.2.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            LastModified
              | refs."anyOf.2.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this relationship was modified."
              | optional,
            Phrasings
              | refs."anyOf.2.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.2.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.2.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.2.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.2.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.2.definitions.relationship", { _ | Dyn } ]
              }
            ],
      "anyOf.2.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.2.definitions.identifier", String ]),
              { _ | refs."anyOf.2.definitions.role" }
            ],
      "anyOf.2.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.2.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.2.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.2.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.2.definitions.templateSchema" = String,
      "anyOf.2.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.2.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.2.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.2.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.2.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.2.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.2.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Adverb, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.2.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.2.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.2.definitions.term" ],
      "anyOf.2.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.2.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.2.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.2.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.2.definitions.nullableTextValue"
                ]
            ],
      "anyOf.2.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.2.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.2.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.2.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.2.definitions.textValues",
              refs."anyOf.2.definitions.numberValues",
              refs."anyOf.2.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.2.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Verb",
                    std.contract.Sequence
                      [
                        refs."anyOf.2.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.2.definitions.phrasingProperties",
              {
                Verb
                  | refs."anyOf.2.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.2.definitions.verbPhrasingProperties" =
        {
            AdverbPhrases
              | refs."anyOf.2.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            IndirectObject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.2.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.2.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.2.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.2.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.2.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.2.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.2.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.2.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.3.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Adjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.3.definitions.adjectivePhrasingProperties",
                ..
              }
            ],
      "anyOf.3.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.3.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            AdverbPhrases
              | refs."anyOf.3.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            Antonyms
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.3.definitions.adverbAntonymPhraseProperty" =
        {
            Antonyms
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)",
            Measurement
              | refs."anyOf.3.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.3.definitions.adverbPhrase" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.adverbPhraseProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.adverbAntonymPhraseProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.3.definitions.adverbPhraseProperty" =
        {
            Adverbs
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (high measurement)",
            Antonyms
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adverbs used to describe the relationship (low measurement)"
              | optional,
            Measurement
              | refs."anyOf.3.definitions.roleReference"
              | doc "The measure which the adverb pertains to"
              | optional,
          },
      "anyOf.3.definitions.adverbPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.3.definitions.adverbPhrase"
            ],
      "anyOf.3.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.3.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
          },
      "anyOf.3.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.agentProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.3.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Attribute",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.3.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.3.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.3.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.3.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.3.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.3.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.3.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.3.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.3.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.3.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.3.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.3.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.3.definitions.dateTime" = String,
      "anyOf.3.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicAdjective",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.3.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.3.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.3.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "DynamicNoun",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.3.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.3.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.3.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.entity", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.entity" =
        {
            Definition | refs."anyOf.3.definitions.entityDefinition",
            ImplicitGroupings
              | refs."anyOf.3.definitions.entityReferences"
              | Array Dyn
              | doc "A list of related entities which are used to group the query when this entity is shown"
              | optional,
            Instances
              | refs."anyOf.3.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.3.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.3.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.3.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.3.definitions.conceptualEntityBinding",
              refs."anyOf.3.definitions.conceptualPropertyBinding",
              refs."anyOf.3.definitions.hierarchyBinding",
              refs."anyOf.3.definitions.hierarchyLevelBinding"
            ],
      "anyOf.3.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.entityReferences" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.3.definitions.entityReference"
            ],
      "anyOf.3.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.3.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.3.definitions.example" ],
      "anyOf.3.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.3.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.3.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.3.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.exampleProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.3.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.3.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.3.definitions.fullRoleReference" =
        { Role | refs."anyOf.3.definitions.identifier" | String, },
      "anyOf.3.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.3.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.3.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.nonEmptyString", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.termProperties", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.3.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.3.definitions.visibility" | String,
            ..
          },
      "anyOf.3.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.nonEmptyString", String ]),
              { _ | refs."anyOf.3.definitions.globalSubstitutionProperties" }
            ],
      "anyOf.3.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.3.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.3.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.3.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.3.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.3.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.3.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.3.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.3.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.3.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.3.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.3.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.3.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.3.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.3.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.3.definitions.lsdlReference" = {},
      "anyOf.3.definitions.modelItemReference" = String,
      "anyOf.3.definitions.namePhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Name",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.3.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.3.definitions.namespaces" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.lsdlReference", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.3.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Noun",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.3.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.3.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.3.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.3.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.3.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.3.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.3.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.3.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.3.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.3.definitions.phrasingPropertyNames" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'TemplateSchema, 'Weight, 'State |] ],
      "anyOf.3.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.3.definitions.phrasing"
            ],
      "anyOf.3.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.3.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.3.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.3.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Preposition",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.3.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.3.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.3.definitions.relationship" =
        {
            Binding
              | refs."anyOf.3.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.3.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.3.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.3.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.3.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.3.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.3.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.identifier", String ]),
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.3.definitions.relationship", { _ | Dyn } ]
              }
            ],
      "anyOf.3.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."anyOf.3.definitions.identifier", String ]),
              { _ | refs."anyOf.3.definitions.role" }
            ],
      "anyOf.3.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.3.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.3.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.3.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.3.definitions.templateSchema" = String,
      "anyOf.3.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.3.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.3.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.3.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.3.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.3.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.3.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Adverb, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.3.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.3.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.3.definitions.term" ],
      "anyOf.3.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.3.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.3.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.3.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.3.definitions.nullableTextValue"
                ]
            ],
      "anyOf.3.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.3.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.3.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.3.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.3.definitions.textValues",
              refs."anyOf.3.definitions.numberValues",
              refs."anyOf.3.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.3.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Const "Verb",
                    std.contract.Sequence
                      [
                        refs."anyOf.3.definitions.phrasingPropertyNames",
                        String
                      ]
                  ]),
              refs."anyOf.3.definitions.phrasingProperties",
              {
                Verb
                  | refs."anyOf.3.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                ..
              }
            ],
      "anyOf.3.definitions.verbPhrasingProperties" =
        {
            AdverbPhrases
              | refs."anyOf.3.definitions.adverbPhrases"
              | Array Dyn
              | doc "Additional adverb phrases which apply to the phrasing"
              | optional,
            IndirectObject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.3.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.3.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.3.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.3.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.3.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.3.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.3.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.3.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.4.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.4.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.4.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            Antonyms
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.4.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.4.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
          },
      "anyOf.4.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.agentProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.4.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.4.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.4.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.4.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.4.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.4.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.4.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.4.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.4.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.4.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.4.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.4.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.4.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.4.definitions.dateTime" = String,
      "anyOf.4.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.4.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.4.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.4.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.4.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.4.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.4.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.entity" =
        {
            Definition | refs."anyOf.4.definitions.entityDefinition",
            ImplicitGroupings
              | refs."anyOf.4.definitions.entityReferences"
              | Array Dyn
              | doc "A list of related entities which are used to group the query when this entity is shown"
              | optional,
            Instances
              | refs."anyOf.4.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.4.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.4.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.4.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.4.definitions.conceptualEntityBinding",
              refs."anyOf.4.definitions.conceptualPropertyBinding",
              refs."anyOf.4.definitions.hierarchyBinding",
              refs."anyOf.4.definitions.hierarchyLevelBinding"
            ],
      "anyOf.4.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.entityReferences" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.4.definitions.entityReference"
            ],
      "anyOf.4.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.4.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.4.definitions.example" ],
      "anyOf.4.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.4.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.4.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.4.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.exampleProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.4.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.4.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.4.definitions.fullRoleReference" =
        { Role | refs."anyOf.4.definitions.identifier" | String, },
      "anyOf.4.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.4.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.4.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.4.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.4.definitions.visibility" | String,
            ..
          },
      "anyOf.4.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.4.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.4.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.4.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.4.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.4.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.4.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.4.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.4.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.4.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.4.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.4.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.4.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.4.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.4.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.4.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.4.definitions.lsdlReference" = {},
      "anyOf.4.definitions.modelItemReference" = String,
      "anyOf.4.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.4.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.4.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.4.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.4.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.4.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.4.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.4.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.4.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.4.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.4.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.4.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.4.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.4.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.4.definitions.phrasing"
            ],
      "anyOf.4.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.4.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.4.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.4.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.4.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.4.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.4.definitions.relationship" =
        {
            Binding
              | refs."anyOf.4.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.4.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.4.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.4.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.4.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.4.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.4.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.4.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.4.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.4.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.4.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.4.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.4.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.4.definitions.templateSchema" = String,
      "anyOf.4.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.4.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.4.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.4.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.4.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.4.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.4.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.4.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.4.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.4.definitions.term" ],
      "anyOf.4.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.4.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.4.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.4.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.4.definitions.nullableTextValue"
                ]
            ],
      "anyOf.4.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.4.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.4.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.4.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.4.definitions.textValues",
              refs."anyOf.4.definitions.numberValues",
              refs."anyOf.4.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.4.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.4.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.4.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.4.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.4.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.4.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.4.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.4.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.4.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.4.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.4.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.4.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.5.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.5.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.5.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            Antonyms
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.5.definitions.agentProperties" =
        {
            LastModified
              | refs."anyOf.5.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this agent modified the linguistic schema."
              | optional,
          },
      "anyOf.5.definitions.agents" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.agentProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.5.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.5.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.5.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.5.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.5.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.5.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.5.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.5.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.5.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.5.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.5.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.5.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.5.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.5.definitions.dateTime" = String,
      "anyOf.5.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.5.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.5.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.5.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.5.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.5.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.5.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.entity" =
        {
            Definition | refs."anyOf.5.definitions.entityDefinition",
            Instances
              | refs."anyOf.5.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.5.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.5.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.5.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.5.definitions.conceptualEntityBinding",
              refs."anyOf.5.definitions.conceptualPropertyBinding",
              refs."anyOf.5.definitions.hierarchyBinding",
              refs."anyOf.5.definitions.hierarchyLevelBinding"
            ],
      "anyOf.5.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.5.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.5.definitions.example" ],
      "anyOf.5.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.5.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.5.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.5.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.exampleProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.5.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.5.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.5.definitions.fullRoleReference" =
        { Role | refs."anyOf.5.definitions.identifier" | String, },
      "anyOf.5.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.5.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.5.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.5.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.5.definitions.visibility" | String,
            ..
          },
      "anyOf.5.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.5.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.5.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.5.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.5.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.5.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.5.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.5.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.5.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.5.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.5.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.5.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.5.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.5.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.5.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.5.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.5.definitions.lsdlReference" = {},
      "anyOf.5.definitions.modelItemReference" = String,
      "anyOf.5.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.5.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.5.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.5.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.5.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.5.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.5.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.5.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.5.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.5.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.5.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.5.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.5.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.5.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.5.definitions.phrasing"
            ],
      "anyOf.5.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.5.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.5.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.5.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.5.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.5.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.5.definitions.relationship" =
        {
            Binding
              | refs."anyOf.5.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.5.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.5.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.5.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.5.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.5.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.5.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.5.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.5.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.5.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.5.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.5.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.5.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.5.definitions.templateSchema" = String,
      "anyOf.5.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.5.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.5.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.5.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.5.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.5.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.5.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.5.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.5.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.5.definitions.term" ],
      "anyOf.5.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.5.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.5.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.5.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.5.definitions.nullableTextValue"
                ]
            ],
      "anyOf.5.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.5.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.5.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.5.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.5.definitions.textValues",
              refs."anyOf.5.definitions.numberValues",
              refs."anyOf.5.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.5.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.5.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.5.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.5.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.5.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.5.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.5.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.5.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.5.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.5.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.5.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.5.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.6.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.6.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.6.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            Antonyms
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.6.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.6.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.6.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.6.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.6.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.6.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.6.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.6.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.6.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.6.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.6.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.6.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.6.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.6.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.6.definitions.dateTime" = String,
      "anyOf.6.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.6.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.6.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.6.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.6.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.6.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.6.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.6.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.entity" =
        {
            Definition | refs."anyOf.6.definitions.entityDefinition",
            Instances
              | refs."anyOf.6.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            NameType
              | std.enum.TagOrString
              | [| 'Identifier, 'Name, 'None |]
              | doc "Indicates whether this entity represents the Name or ID of something"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.6.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.6.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.6.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.6.definitions.conceptualEntityBinding",
              refs."anyOf.6.definitions.conceptualPropertyBinding",
              refs."anyOf.6.definitions.hierarchyBinding",
              refs."anyOf.6.definitions.hierarchyLevelBinding"
            ],
      "anyOf.6.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.6.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.6.definitions.example" ],
      "anyOf.6.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.6.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.6.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.6.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.6.definitions.exampleProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.6.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.6.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.6.definitions.fullRoleReference" =
        { Role | refs."anyOf.6.definitions.identifier" | String, },
      "anyOf.6.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.6.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.6.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.6.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.6.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.6.definitions.visibility" | String,
            ..
          },
      "anyOf.6.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.6.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.6.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.6.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.6.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.6.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.6.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.6.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.6.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.6.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.6.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.6.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.6.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.6.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.6.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.6.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.6.definitions.lsdlReference" = {},
      "anyOf.6.definitions.modelItemReference" = String,
      "anyOf.6.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.6.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.6.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.6.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.6.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.6.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.6.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.6.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.6.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.6.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.6.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.6.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.6.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.6.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.6.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.6.definitions.phrasing"
            ],
      "anyOf.6.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.6.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.6.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.6.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.6.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.6.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.6.definitions.relationship" =
        {
            Binding
              | refs."anyOf.6.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.6.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.6.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.6.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.6.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.6.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.6.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.6.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.6.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.6.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.6.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.6.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.6.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.6.definitions.templateSchema" = String,
      "anyOf.6.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.6.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.6.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.6.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.6.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.6.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.6.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.6.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.6.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.6.definitions.term" ],
      "anyOf.6.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.6.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.6.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.6.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.6.definitions.nullableTextValue"
                ]
            ],
      "anyOf.6.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.6.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.6.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.6.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.6.definitions.textValues",
              refs."anyOf.6.definitions.numberValues",
              refs."anyOf.6.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.6.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.6.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.6.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.6.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.6.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.6.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.6.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.6.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.6.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.6.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.6.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.6.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.7.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.7.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.adjectivePhrasingProperty",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.antonymPhrasingProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.7.definitions.adjectivePhrasingProperty" =
        {
            Adjectives
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a high measurement)",
            Antonyms
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)"
              | optional,
            Measurement
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.7.definitions.antonymPhrasingProperty" =
        {
            Antonyms
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Adjectives used to describe the Subject (with a low measurement)",
            Measurement
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which measures the extent to which the Adjectives apply"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.7.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.7.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.7.definitions.bindingEntityDefinition" =
        {
            Binding
              | refs."anyOf.7.definitions.entityBinding"
              | doc "The conceptual model object binding",
          },
      "anyOf.7.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.7.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.7.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.7.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.7.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.7.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.7.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.7.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.7.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.7.definitions.dateTime" = String,
      "anyOf.7.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.7.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.7.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.7.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.7.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.7.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.7.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.7.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.entity" =
        {
            Definition | refs."anyOf.7.definitions.entityDefinition",
            Instances
              | refs."anyOf.7.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Visibility
              | refs."anyOf.7.definitions.visibilityProperty"
              | doc "Indicates whether the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Weight
              | refs."anyOf.7.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.7.definitions.entityBinding" =
        js2n.OneOf
            [
              refs."anyOf.7.definitions.conceptualEntityBinding",
              refs."anyOf.7.definitions.conceptualPropertyBinding",
              refs."anyOf.7.definitions.hierarchyBinding",
              refs."anyOf.7.definitions.hierarchyLevelBinding"
            ],
      "anyOf.7.definitions.entityDefinition" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.bindingEntityDefinition",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.textEntityDefinition", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.7.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.7.definitions.example" ],
      "anyOf.7.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.7.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.7.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.7.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.7.definitions.exampleProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.7.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.7.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.7.definitions.fullRoleReference" =
        { Role | refs."anyOf.7.definitions.identifier" | String, },
      "anyOf.7.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.7.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.7.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.7.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.fullVisibilityProperty" =
        {
            State
              | refs."anyOf.7.definitions.propertyState"
              | String
              | doc "The state of the visibility property"
              | optional,
            Value | refs."anyOf.7.definitions.visibility" | String,
            ..
          },
      "anyOf.7.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.7.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.7.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.7.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.7.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.7.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.7.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.7.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.7.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.7.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.7.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.7.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.7.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.7.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'All, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.7.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.7.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.7.definitions.lsdlReference" = {},
      "anyOf.7.definitions.modelItemReference" = String,
      "anyOf.7.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.7.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.7.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.7.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.7.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.7.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.7.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.7.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.7.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.7.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.7.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.7.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.7.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.7.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.7.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.7.definitions.phrasing"
            ],
      "anyOf.7.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.7.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.7.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.7.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.7.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.7.definitions.propertyState" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Suggested, 'Generated, 'Authored, 'Default |]
            ],
      "anyOf.7.definitions.relationship" =
        {
            Binding
              | refs."anyOf.7.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.7.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.7.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.7.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.7.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.7.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.7.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.7.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.7.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.7.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.7.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.7.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.7.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.7.definitions.templateSchema" = String,
      "anyOf.7.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.7.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.7.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.7.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.7.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.7.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.7.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.7.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.7.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.7.definitions.term" ],
      "anyOf.7.definitions.textEntityDefinition" =
        {
            Text
              | refs."anyOf.7.definitions.nonEmptyString"
              | String
              | doc "The textual definition",
          },
      "anyOf.7.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.7.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.7.definitions.nullableTextValue"
                ]
            ],
      "anyOf.7.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.7.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.7.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.7.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.7.definitions.textValues",
              refs."anyOf.7.definitions.numberValues",
              refs."anyOf.7.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.7.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.7.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.7.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.7.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.7.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.7.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.7.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.7.definitions.visibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Children, 'Hidden, 'Visible |] ],
      "anyOf.7.definitions.visibilityProperty" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.7.definitions.visibility", String ],
              std.contract.Sequence
                [
                  refs."anyOf.7.definitions.fullVisibilityProperty",
                  { _ | Dyn }
                ]
            ],
      "anyOf.7.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.8.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.8.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Adjectives =
                          std.contract.Sequence
                              [ refs."anyOf.8.definitions.terms", Array Dyn ],
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.8.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.8.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.8.definitions.roleReference",
                      },
                  required = { Adjectives = true, Subject = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.8.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.8.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.8.definitions.roleReference",
                      },
                  required = { Antonyms = true, Subject = true, },
                }
            ],
      "anyOf.8.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.8.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.8.definitions.bindingEntityDefinition" =
        {
            Binding
              | js2n.OneOf
                [
                  refs."anyOf.8.definitions.conceptualEntityBinding",
                  refs."anyOf.8.definitions.conceptualPropertyBinding",
                  refs."anyOf.8.definitions.hierarchyBinding",
                  refs."anyOf.8.definitions.hierarchyLevelBinding"
                ]
              | doc "The conceptual model object binding",
          },
      "anyOf.8.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.8.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.8.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.8.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.8.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.8.definitions.condition" =
        {
            Aggregation
              | std.enum.TagOrString
              | [|
                'StandardDeviation,
                'Variance,
                'Median,
                'Max,
                'Min,
                'Count,
                'Average,
                'Sum,
                'None
              |]
              | doc "An aggregate function applied to the role"
              | optional,
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.8.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.8.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.8.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.8.definitions.dateTime" = String,
      "anyOf.8.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.8.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.8.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.8.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.8.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.8.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.8.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.8.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.entity" =
        {
            Definition
              | refs."anyOf.8.definitions.entityDefinition"
              | { _ | Dyn },
            Hidden
              | Bool
              | doc "Indicates the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Instances
              | refs."anyOf.8.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Weight
              | refs."anyOf.8.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.8.definitions.entityDefinition" =
        std.contract.Sequence
            [ refs."anyOf.8.definitions.bindingEntityDefinition", { _ | Dyn } ],
      "anyOf.8.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.example" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullExample", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.exampleProperties" =
        {
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the example is derived"
              | optional,
          },
      "anyOf.8.definitions.examples" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.8.definitions.example" ],
      "anyOf.8.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.8.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.8.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.8.definitions.fullExample" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.8.definitions.exampleProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.8.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.8.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.8.definitions.fullRoleReference" =
        { Role | refs."anyOf.8.definitions.identifier" | String, },
      "anyOf.8.definitions.fullSource" =
        {
            Agent
              | String
              | doc "Specific name of the agent that created the object."
              | optional,
            Type | refs."anyOf.8.definitions.sourceType" | String | optional,
            ..
          },
      "anyOf.8.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.8.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.8.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.8.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.8.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.8.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.8.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.8.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.8.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.8.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.8.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.8.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.8.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.8.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.8.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.8.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.8.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.8.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.8.definitions.lsdlReference" = {},
      "anyOf.8.definitions.modelItemReference" = String,
      "anyOf.8.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.8.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.8.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.8.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.8.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.8.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.8.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.8.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.8.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.8.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.8.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.8.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.8.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.8.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.8.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.8.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.8.definitions.phrasing"
            ],
      "anyOf.8.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.8.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.8.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.8.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.8.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.8.definitions.relationship" =
        {
            Binding
              | refs."anyOf.8.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.8.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.8.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.8.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.8.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.8.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.8.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.8.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.8.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.8.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.8.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.8.definitions.source" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.sourceType", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullSource", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.sourceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'External, 'Internal, 'User, 'Default |]
            ],
      "anyOf.8.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.8.definitions.templateSchema" = String,
      "anyOf.8.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.8.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.8.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.8.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.8.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            Source
              | refs."anyOf.8.definitions.source"
              | doc "The source of the term"
              | optional,
            State
              | refs."anyOf.8.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.8.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.8.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.8.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.8.definitions.term" ],
      "anyOf.8.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.8.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.8.definitions.nullableTextValue"
                ]
            ],
      "anyOf.8.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.8.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.8.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.8.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.8.definitions.textValues",
              refs."anyOf.8.definitions.numberValues",
              refs."anyOf.8.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.8.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.8.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.8.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.8.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.8.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.8.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.8.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.8.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
      "anyOf.9.definitions.adjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                Adjective
                  | refs."anyOf.9.definitions.adjectivePhrasingProperties",
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.adjectivePhrasingProperties" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Adjectives =
                          std.contract.Sequence
                              [ refs."anyOf.9.definitions.terms", Array Dyn ],
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.9.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.9.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.9.definitions.roleReference",
                      },
                  required = { Adjectives = true, Subject = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Antonyms =
                          std.contract.Sequence
                              [ refs."anyOf.9.definitions.terms", Array Dyn ],
                        Measurement = refs."anyOf.9.definitions.roleReference",
                        PrepositionalPhrases =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.prepPhrases",
                                Array Dyn
                              ],
                        Subject = refs."anyOf.9.definitions.roleReference",
                      },
                  required = { Antonyms = true, Subject = true, },
                }
            ],
      "anyOf.9.definitions.attributePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                Attribute
                  | refs."anyOf.9.definitions.attributePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.attributePhrasingProperties" =
        {
            Object
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the object of the phrasing",
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.9.definitions.booleanValues" =
        js2n.OneOf
            [
              refs."anyOf.9.definitions.nullableBooleanValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.9.definitions.nullableBooleanValue"
                ]
            ],
      "anyOf.9.definitions.conceptualEntityBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, },
                }
            ],
      "anyOf.9.definitions.conceptualPropertyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Column =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Column = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Measure =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Measure = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        ConceptualProperty =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { ConceptualEntity = true, ConceptualProperty = true, },
                }
            ],
      "anyOf.9.definitions.condition" =
        {
            Operator
              | std.enum.TagOrString
              | [|
                'NotStartsWith,
                'StartsWith,
                'NotContains,
                'Contains,
                'LessThanOrEquals,
                'GreaterThanOrEquals,
                'LessThan,
                'GreaterThan,
                'NotEquals,
                'Equals
              |]
              | doc "The operator with which to compare the value and the role",
            Target
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role in the relationship to compare to the value",
            Value
              | refs."anyOf.9.definitions.value"
              | doc "The value to which the role is compared",
          },
      "anyOf.9.definitions.conditions" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 1,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.9.definitions.condition", { _ | Dyn } ]
              )
            ],
      "anyOf.9.definitions.dateTime" = String,
      "anyOf.9.definitions.dynamicAdjectivePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                DynamicAdjective
                  | refs."anyOf.9.definitions.dynamicAdjectivePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.dynamicAdjectivePhrasingProperties" =
        {
            Adjective
              | refs."anyOf.9.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is described via an adjective",
          },
      "anyOf.9.definitions.dynamicNounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                DynamicNoun
                  | refs."anyOf.9.definitions.dynamicNounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.dynamicNounPhrasingProperties" =
        {
            Noun
              | refs."anyOf.9.definitions.roleReference"
              | doc "The column entity (or table entity with a name phrasing) which is the used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.9.definitions.entities" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.9.definitions.entity", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.entity" =
        {
            Binding
              | js2n.OneOf
                [
                  refs."anyOf.9.definitions.conceptualEntityBinding",
                  refs."anyOf.9.definitions.conceptualPropertyBinding",
                  refs."anyOf.9.definitions.hierarchyBinding",
                  refs."anyOf.9.definitions.hierarchyLevelBinding"
                ]
              | doc "The conceptual model object which represents the entity",
            Hidden
              | Bool
              | doc "Indicates the entity is hidden. Hidden entities are ignored for all purposes other than being available nodes along paths between other related entities."
              | optional,
            Instances
              | refs."anyOf.9.definitions.instances"
              | { _ | Dyn }
              | doc "Defines how instance values from the model are recognized"
              | optional,
            SemanticType
              | std.enum.TagOrString
              | [| 'Duration, 'Time, 'Location, 'Inanimate, 'Animate, 'Person |]
              | doc "The overall semantic category of the entity"
              | optional,
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the entity"
              | optional,
            TemplateSchema
              | refs."anyOf.9.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this entity is derived"
              | optional,
            Terms
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Terms which can be used to refer to this entity"
              | optional,
            Units
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Nouns which indicate the units represented in this numeric property entity."
              | optional,
            Weight
              | refs."anyOf.9.definitions.weight"
              | Number
              | doc "The weight to apply to this entity"
              | optional,
          },
      "anyOf.9.definitions.entityReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.9.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.fullEntityReference", { _ | Dyn } ]
            ],
      "anyOf.9.definitions.fullEntityReference" =
        {
            Entity
              | refs."anyOf.9.definitions.identifier"
              | String
              | doc "The name of the entity",
            Namespace
              | refs."anyOf.9.definitions.identifier"
              | String
              | doc "The name of the namespace of the linguistic schema that contains the entity"
              | optional,
          },
      "anyOf.9.definitions.fullGlobalSubstitutionProperties" =
        {
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the global substitution"
              | optional,
            Substitute
              | String
              | doc "The sequence of words to substitute into the utterance.",
            TemplateSchema
              | refs."anyOf.9.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this global substitution is derived"
              | optional,
          },
      "anyOf.9.definitions.fullRole" =
        {
            Amount
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates the amount of this role's entity which participates in the relationship"
              | optional,
            Nouns
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Nouns which can be used to refer to the entity which is the target of the role, when used in the context of the relationship"
              | optional,
            Quantity
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates the quantity of this role's entity which participates in the relationship"
              | optional,
            Target
              | refs."anyOf.9.definitions.entityReference"
              | doc "The linguistic entity which is the target of the role",
          },
      "anyOf.9.definitions.fullRoleReference" =
        { Role | refs."anyOf.9.definitions.identifier" | String, },
      "anyOf.9.definitions.fullTerm" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.9.definitions.termProperties", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.globalSubstitution" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.9.definitions.globalSubstitutionProperties" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.globalSubstitutionProperties" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  refs."anyOf.9.definitions.fullGlobalSubstitutionProperties",
                  { _ | Dyn }
                ]
            ],
      "anyOf.9.definitions.globalSubstitutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.9.definitions.globalSubstitution", { _ | Dyn } ]
              )
            ],
      "anyOf.9.definitions.hierarchyBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { Hierarchy = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required = { ConceptualEntity = true, Hierarchy = true, },
                }
            ],
      "anyOf.9.definitions.hierarchyLevelBinding" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Table =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    { Hierarchy = true, HierarchyLevel = true, Table = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ConceptualEntity =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        Hierarchy =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        HierarchyLevel =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSet =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                        VariationSource =
                          std.contract.Sequence
                              [
                                refs."anyOf.9.definitions.modelItemReference",
                                String
                              ],
                      },
                  required =
                    {
                        ConceptualEntity = true,
                        Hierarchy = true,
                        HierarchyLevel = true,
                      },
                }
            ],
      "anyOf.9.definitions.identifier" = js2n.string.Matches "^.+$",
      "anyOf.9.definitions.instanceSynonyms" =
        {
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the instance synonyms"
              | optional,
            SynonymBinding
              | refs."anyOf.9.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains terms that can be used to refer to values of the entity",
            ValueBinding
              | refs."anyOf.9.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the corresponding values of the entity",
          },
      "anyOf.9.definitions.instanceWeights" =
        {
            Binding
              | refs."anyOf.9.definitions.conceptualPropertyBinding"
              | doc "The conceptual model object which contains the instance weights corresponding to instances of the entity",
          },
      "anyOf.9.definitions.instances" =
        {
            Index
              | std.enum.TagOrString
              | [| 'None, 'Default |]
              | doc "Indicates whether the values of this entity should be available in the term index, enabling recognition, completion, and suggestions."
              | optional,
            PluralNormalization
              | std.enum.TagOrString
              | [| 'None, 'Normalized, 'Default |]
              | doc "Indicates whether values that appear to be plural should match singular words in the utterance."
              | optional,
            Synonyms
              | refs."anyOf.9.definitions.instanceSynonyms"
              | { _ | Dyn }
              | doc "Defines a set of values which are synonyms of instances of this entity."
              | optional,
            Weights
              | refs."anyOf.9.definitions.instanceWeights"
              | { _ | Dyn }
              | doc "Reference to property in the model which contains the weight to apply to instances of this entity."
              | optional,
          },
      "anyOf.9.definitions.lsdlReference" = {},
      "anyOf.9.definitions.modelItemReference" = String,
      "anyOf.9.definitions.namePhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                Name
                  | refs."anyOf.9.definitions.namePhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.namePhrasingProperties" =
        {
            Name
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the name of the Subject",
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the subject of the phrasing",
          },
      "anyOf.9.definitions.namespaces" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.9.definitions.lsdlReference", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.nonEmptyString" = js2n.string.MinLength 1,
      "anyOf.9.definitions.nounPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                Noun
                  | refs."anyOf.9.definitions.nounPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.nounPhrasingProperties" =
        {
            Nouns
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Nouns used to describe the Subject",
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is described via a noun",
          },
      "anyOf.9.definitions.nullableBooleanValue" = js2n.Nullable Bool,
      "anyOf.9.definitions.nullableNumberValue" = js2n.Nullable Number,
      "anyOf.9.definitions.nullableTextValue" = js2n.Nullable String,
      "anyOf.9.definitions.numberValues" =
        js2n.OneOf
            [
              refs."anyOf.9.definitions.nullableNumberValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.9.definitions.nullableNumberValue"
                ]
            ],
      "anyOf.9.definitions.phrasing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."anyOf.9.definitions.attributePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.namePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.adjectivePhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."anyOf.9.definitions.dynamicAdjectivePhrasing",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.nounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.dynamicNounPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.prepositionPhrasing", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.verbPhrasing", { _ | Dyn } ]
            ],
      "anyOf.9.definitions.phrasingProperties" =
        {
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the phrasing"
              | optional,
            TemplateSchema
              | refs."anyOf.9.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the phrasing is derived"
              | optional,
            Weight
              | refs."anyOf.9.definitions.weight"
              | Number
              | doc "The weight to apply to the phrasing"
              | optional,
            ..
          },
      "anyOf.9.definitions.phrasings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array refs."anyOf.9.definitions.phrasing"
            ],
      "anyOf.9.definitions.prepPhrase" =
        {
            Object
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            Prepositions
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
          },
      "anyOf.9.definitions.prepPhrases" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."anyOf.9.definitions.prepPhrase", { _ | Dyn } ]
              )
            ],
      "anyOf.9.definitions.prepositionPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                Preposition
                  | refs."anyOf.9.definitions.prepositionPhrasingProperties"
                  | { _ | Dyn },
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.prepositionPhrasingProperties" =
        {
            Object
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the object of the prepositional phrase",
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Prepositions
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Prepositions used in the prepositional phrase",
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the subject of the prepositional phrase",
          },
      "anyOf.9.definitions.relationship" =
        {
            Binding
              | refs."anyOf.9.definitions.conceptualEntityBinding"
              | doc "The conceptual model object which embodies the relationship"
              | optional,
            Conditions
              | refs."anyOf.9.definitions.conditions"
              | Array Dyn
              | doc "A set of conditions which are required to be true for instances of the relationship represented in the semantic model"
              | optional,
            Phrasings
              | refs."anyOf.9.definitions.phrasings"
              | Array Dyn
              | doc "A set of syntactic frames which define the types of language used to describe the relationship"
              | optional,
            Roles
              | refs."anyOf.9.definitions.roles"
              | { _ | Dyn }
              | doc "References to linguistic entities which participate in the relationship"
              | optional,
            SemanticSlots
              | refs."anyOf.9.definitions.semanticSlots"
              | { _ | Dyn }
              | doc "Defines how roles fill common semantic slots in the relationship"
              | optional,
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the relationship"
              | optional,
            TemplateSchema
              | refs."anyOf.9.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which this relationship is derived"
              | optional,
            Weight
              | refs."anyOf.9.definitions.weight"
              | Number
              | doc "The weight to apply to this relationship"
              | optional,
          },
      "anyOf.9.definitions.relationships" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                _ | std.contract.Sequence
                  [ refs."anyOf.9.definitions.relationship", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.role" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.9.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.fullRole", { _ | Dyn } ]
            ],
      "anyOf.9.definitions.roleReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.9.definitions.identifier", String ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.fullRoleReference", { _ | Dyn } ]
            ],
      "anyOf.9.definitions.roles" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { _ | refs."anyOf.9.definitions.role" },
              js2n.record.FieldsMatch "^.+$"
            ],
      "anyOf.9.definitions.semanticSlots" =
        {
            Duration
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates how long the relationship occurred"
              | optional,
            Occurrences
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates the number of times the relationship occurred"
              | optional,
            When
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates when the relationship takes place"
              | optional,
            Where
              | refs."anyOf.9.definitions.roleReference"
              | doc "A role which indicates where the relationship takes place"
              | optional,
          },
      "anyOf.9.definitions.state" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Deleted, 'Suggested, 'Generated, 'Authored |]
            ],
      "anyOf.9.definitions.templateSchema" = String,
      "anyOf.9.definitions.term" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."anyOf.9.definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."anyOf.9.definitions.fullTerm", { _ | Dyn } ]
            ],
      "anyOf.9.definitions.termProperties" =
        {
            LastModified
              | refs."anyOf.9.definitions.dateTime"
              | String
              | doc "Indicates the last date and time (in UTC) that this term was modified."
              | optional,
            State
              | refs."anyOf.9.definitions.state"
              | String
              | doc "The state of the term"
              | optional,
            TemplateSchema
              | refs."anyOf.9.definitions.templateSchema"
              | String
              | doc "Identifies the shared template schema from which the term is derived"
              | optional,
            Type
              | std.enum.TagOrString
              | [| 'Preposition, 'Adjective, 'Verb, 'Noun |]
              | doc "The part of speech of the term"
              | optional,
            Weight
              | refs."anyOf.9.definitions.weight"
              | Number
              | doc "The weight to apply to the term"
              | optional,
          },
      "anyOf.9.definitions.terms" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."anyOf.9.definitions.term" ],
      "anyOf.9.definitions.textValues" =
        js2n.OneOf
            [
              refs."anyOf.9.definitions.nullableTextValue",
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    refs."anyOf.9.definitions.nullableTextValue"
                ]
            ],
      "anyOf.9.definitions.value" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Text = refs."anyOf.9.definitions.textValues", },
                  required = { Text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { "Number" = refs."anyOf.9.definitions.numberValues", },
                  required = { "Number" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { Boolean = refs."anyOf.9.definitions.booleanValues", },
                  required = { Boolean = true, },
                },
              refs."anyOf.9.definitions.textValues",
              refs."anyOf.9.definitions.numberValues",
              refs."anyOf.9.definitions.booleanValues",
              js2n.Null
            ],
      "anyOf.9.definitions.verbPhrasing" =
        std.contract.Sequence
            [
              refs."anyOf.9.definitions.phrasingProperties",
              {
                State | js2n.Always | optional,
                TemplateSchema | js2n.Always | optional,
                Verb
                  | refs."anyOf.9.definitions.verbPhrasingProperties"
                  | { _ | Dyn },
                Weight | js2n.Always | optional,
              }
            ],
      "anyOf.9.definitions.verbPhrasingProperties" =
        {
            IndirectObject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the indirect object of the verb"
              | optional,
            Object
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the direct object of the verb"
              | optional,
            PrepositionalPhrases
              | refs."anyOf.9.definitions.prepPhrases"
              | Array Dyn
              | doc "Additional prepositional phrases which apply to the phrasing"
              | optional,
            Subject
              | refs."anyOf.9.definitions.roleReference"
              | doc "The entity which is the subject of the verb"
              | optional,
            Verbs
              | refs."anyOf.9.definitions.terms"
              | Array Dyn
              | doc "Verbs used to describe the relationship",
          },
      "anyOf.9.definitions.weight" =
        std.contract.Sequence [ js2n.number.Maximum 1, js2n.number.Minimum 0 ],
    }
    in
  std.contract.any_of
      [
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.0.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    refs."anyOf.0.definitions.dynamicImprovement",
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.0.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.0.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.0.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces =
                    std.contract.Sequence
                        [ refs."anyOf.0.definitions.namespaces", { _ | Dyn } ],
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.0.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"4.1.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.1.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    refs."anyOf.1.definitions.dynamicImprovement",
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.1.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.1.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.1.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces =
                    std.contract.Sequence
                        [ refs."anyOf.1.definitions.namespaces", { _ | Dyn } ],
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.1.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"4.0.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.2.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.2.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.2.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.2.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces =
                    std.contract.Sequence
                        [ refs."anyOf.2.definitions.namespaces", { _ | Dyn } ],
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.2.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.5.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.3.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.3.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.3.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.3.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces =
                    std.contract.Sequence
                        [ refs."anyOf.3.definitions.namespaces", { _ | Dyn } ],
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.3.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.4.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.4.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.4.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.4.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.4.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.4.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.4.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.3.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  Agents =
                    std.contract.Sequence
                        [ refs."anyOf.5.definitions.agents", { _ | Dyn } ],
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.5.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.5.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.5.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.5.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.5.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.2.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.6.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.6.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.6.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.6.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.6.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.1.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.7.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.7.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.7.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.7.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.7.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"3.0.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.8.definitions.entities", { _ | Dyn } ],
                  Examples =
                    std.contract.Sequence
                        [ refs."anyOf.8.definitions.examples", Array Dyn ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.8.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.8.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.8.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"2.0.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.9.definitions.entities", { _ | Dyn } ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.9.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.9.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.9.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"1.2.0", '"1.1.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.10.definitions.entities", { _ | Dyn } ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.10.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches
                        "^[A-Za-z][A-Za-z]+(-[A-Za-z0-9][A-Za-z0-9]+)*$",
                  MinResultConfidence =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Low, 'Medium, 'High, 'VeryHigh, 'Default |]
                        ],
                  Namespaces = refs."anyOf.10.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.10.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"1.0.0" |] ],
                },
            required = { Language = true, Version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  DynamicImprovement =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'None, 'HighConfidence, 'Full, 'Default |]
                        ],
                  Entities =
                    std.contract.Sequence
                        [ refs."anyOf.11.definitions.entities", { _ | Dyn } ],
                  GlobalSubstitutions =
                    std.contract.Sequence
                        [
                          refs."anyOf.11.definitions.globalSubstitutions",
                          Array Dyn
                        ],
                  Language =
                    js2n.string.Matches "^[A-Za-z][A-Za-z]+-[A-Za-z][A-Za-z]+$",
                  Namespaces = refs."anyOf.11.definitions.namespaces",
                  Relationships =
                    std.contract.Sequence
                        [
                          refs."anyOf.11.definitions.relationships",
                          { _ | Dyn }
                        ],
                  Version =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"0.7.0" |] ],
                },
            required = { Language = true, Version = true, },
          }
      ]