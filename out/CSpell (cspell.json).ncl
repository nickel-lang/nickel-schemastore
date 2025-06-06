# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CacheFormat" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'universal, 'legacy |] ],
      "definitions.CacheSettings" =
        {
            cacheFormat
              | refs."definitions.CacheFormat"
              | String
              | doc m%"
                Format of the cache file.
                - `legacy` - use absolute paths in the cache file
                - `universal` - use a sharable format.
              "%
              | optional,
            cacheLocation
              | refs."definitions.FSPathResolvable"
              | String
              | doc m%"
                Path to the cache location. Can be a file or a directory. If none specified `.cspellcache` will be used. Relative paths are relative to the config file in which it is defined.
                
                A prefix of `${cwd}` is replaced with the current working directory.
              "%
              | optional,
            cacheStrategy
              | refs."definitions.CacheStrategy"
              | String
              | doc "Strategy to use for detecting changed files, default: metadata"
              | optional,
            useCache
              | Bool
              | doc "Store the results of processed files in order to only operate on the changed ones."
              | optional,
          },
      "definitions.CacheStrategy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'metadata, 'content |] ],
      "definitions.CharacterSet" = String,
      "definitions.CharacterSetCosts" =
        {
            characters
              | refs."definitions.CharacterSet"
              | String
              | doc m%"
                This is a set of characters that can include `-` or `|`
                - `-` - indicates a range of characters: `a-c` => `abc`
                - `|` - is a group separator, indicating that the characters on either side    are not related.
              "%,
            cost
              | Number
              | doc "the cost to insert / delete / replace / swap the characters in a group",
            penalty
              | Number
              | doc "The penalty cost to apply if the accent is used. This is used to discourage"
              | optional,
          },
      "definitions.CostMapDefInsDel" =
        {
            description
              | String
              | doc "A description to describe the purpose of the map."
              | optional,
            insDel
              | Number
              | doc "The cost to insert/delete one of the substrings in the map. Note: insert/delete costs are symmetrical.",
            map
              | String
              | doc m%"
                The set of substrings to map, these are generally single character strings.
                
                Multiple sets can be defined by using a `|` to separate them.
                
                Example: `"eéê|aåá"` contains two different sets.
                
                To add a multi-character substring use `()`.
                
                Example: `"f(ph)(gh)"` results in the following set: `f`, `ph`, `gh`.
                
                - To match the beginning of a word, use `^`: `"(^I)""`.
                - To match the end of a word, use `$`: `"(e$)(ing$)"`.
              "%,
            penalty
              | Number
              | doc m%"
                Add a penalty to the final cost. This is used to discourage certain suggestions.
                
                Example: ```yaml # Match adding/removing `-` to the end of a word. map: "$(-$)" replace: 50 penalty: 100 ```
                
                This makes adding a `-` to the end of a word more expensive.
                
                Think of it as taking the toll way for speed but getting the bill later.
              "%
              | optional,
            replace
              | Number
              | doc "The cost to replace of of the substrings in the map with another substring in the map. Example: Map['a', 'i'] This would be the cost to substitute `a` with `i`: Like `bat` to `bit` or the reverse."
              | optional,
            swap
              | Number
              | doc "The cost to swap two adjacent substrings found in the map. Example: Map['e', 'i'] This represents the cost to change `ei` to `ie` or the reverse."
              | optional,
          },
      "definitions.CostMapDefReplace" =
        {
            description
              | String
              | doc "A description to describe the purpose of the map."
              | optional,
            insDel
              | Number
              | doc "The cost to insert/delete one of the substrings in the map. Note: insert/delete costs are symmetrical."
              | optional,
            map
              | String
              | doc m%"
                The set of substrings to map, these are generally single character strings.
                
                Multiple sets can be defined by using a `|` to separate them.
                
                Example: `"eéê|aåá"` contains two different sets.
                
                To add a multi-character substring use `()`.
                
                Example: `"f(ph)(gh)"` results in the following set: `f`, `ph`, `gh`.
                
                - To match the beginning of a word, use `^`: `"(^I)""`.
                - To match the end of a word, use `$`: `"(e$)(ing$)"`.
              "%,
            penalty
              | Number
              | doc m%"
                Add a penalty to the final cost. This is used to discourage certain suggestions.
                
                Example: ```yaml # Match adding/removing `-` to the end of a word. map: "$(-$)" replace: 50 penalty: 100 ```
                
                This makes adding a `-` to the end of a word more expensive.
                
                Think of it as taking the toll way for speed but getting the bill later.
              "%
              | optional,
            replace
              | Number
              | doc "The cost to replace of of the substrings in the map with another substring in the map. Example: Map['a', 'i'] This would be the cost to substitute `a` with `i`: Like `bat` to `bit` or the reverse.",
            swap
              | Number
              | doc "The cost to swap two adjacent substrings found in the map. Example: Map['e', 'i'] This represents the cost to change `ei` to `ie` or the reverse."
              | optional,
          },
      "definitions.CostMapDefSwap" =
        {
            description
              | String
              | doc "A description to describe the purpose of the map."
              | optional,
            insDel
              | Number
              | doc "The cost to insert/delete one of the substrings in the map. Note: insert/delete costs are symmetrical."
              | optional,
            map
              | String
              | doc m%"
                The set of substrings to map, these are generally single character strings.
                
                Multiple sets can be defined by using a `|` to separate them.
                
                Example: `"eéê|aåá"` contains two different sets.
                
                To add a multi-character substring use `()`.
                
                Example: `"f(ph)(gh)"` results in the following set: `f`, `ph`, `gh`.
                
                - To match the beginning of a word, use `^`: `"(^I)""`.
                - To match the end of a word, use `$`: `"(e$)(ing$)"`.
              "%,
            penalty
              | Number
              | doc m%"
                Add a penalty to the final cost. This is used to discourage certain suggestions.
                
                Example: ```yaml # Match adding/removing `-` to the end of a word. map: "$(-$)" replace: 50 penalty: 100 ```
                
                This makes adding a `-` to the end of a word more expensive.
                
                Think of it as taking the toll way for speed but getting the bill later.
              "%
              | optional,
            replace
              | Number
              | doc "The cost to replace of of the substrings in the map with another substring in the map. Example: Map['a', 'i'] This would be the cost to substitute `a` with `i`: Like `bat` to `bit` or the reverse."
              | optional,
            swap
              | Number
              | doc "The cost to swap two adjacent substrings found in the map. Example: Map['e', 'i'] This represents the cost to change `ei` to `ie` or the reverse.",
          },
      "definitions.CustomDictionaryPath" =
        std.contract.Sequence [ refs."definitions.FsDictionaryPath", String ],
      "definitions.CustomDictionaryScope" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'folder, 'workspace, 'user |] ],
      "definitions.DictionaryDefinition" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionPreferred",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."definitions.DictionaryDefinitionCustom", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionAugmented",
                  { _ | Dyn }
                ],
              refs."definitions.DictionaryDefinitionInline",
              std.contract.Sequence
                [ refs."definitions.DictionaryDefinitionSimple", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionAlternate",
                  { _ | Dyn }
                ]
            ],
      "definitions.DictionaryDefinitionAlternate" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            file
              | refs."definitions.DictionaryPath"
              | String
              | doc "Path to the file, only for legacy dictionary definitions.",
            ignoreForbiddenWords
              | Bool
              | doc "Some dictionaries may contain forbidden words to prevent compounding from generating words that are not valid in the language. These are often words that are used in other languages or might be generated through compounding. This setting allows flagged words to be ignored when checking the dictionary. The effect is similar to the word not being in the dictionary."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            noSuggest
              | Bool
              | doc m%"
                Indicate that suggestions should not come from this dictionary. Words in this dictionary are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in this dictionary, it will be removed from the set of possible suggestions.
              "%
              | optional,
            repMap
              | refs."definitions.ReplaceMap"
              | Array Dyn
              | doc "Replacement pairs."
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            type
              | refs."definitions.DictionaryFileTypes"
              | String
              | doc m%"
                Type of file:
                - S - single word per line,
                - W - each line can contain one or more words separated by space,
                - C - each line is treated like code (Camel Case is allowed).
                
                Default is S.
                
                C is the slowest to load due to the need to split each line based upon code splitting rules.
                
                Note: this settings does not apply to inline dictionaries or `.trie` files.
              "%
              | optional,
            useCompounds | Bool | doc "Use Compounds." | optional,
          },
      "definitions.DictionaryDefinitionAugmented" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            dictionaryInformation
              | refs."definitions.DictionaryInformation"
              | { _ | Dyn }
              | optional,
            ignoreForbiddenWords
              | Bool
              | doc "Some dictionaries may contain forbidden words to prevent compounding from generating words that are not valid in the language. These are often words that are used in other languages or might be generated through compounding. This setting allows flagged words to be ignored when checking the dictionary. The effect is similar to the word not being in the dictionary."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            noSuggest
              | Bool
              | doc m%"
                Indicate that suggestions should not come from this dictionary. Words in this dictionary are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in this dictionary, it will be removed from the set of possible suggestions.
              "%
              | optional,
            path
              | refs."definitions.DictionaryPath"
              | String
              | doc "Path to the file.",
            repMap
              | refs."definitions.ReplaceMap"
              | Array Dyn
              | doc "Replacement pairs."
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            type
              | refs."definitions.DictionaryFileTypes"
              | String
              | doc m%"
                Type of file:
                - S - single word per line,
                - W - each line can contain one or more words separated by space,
                - C - each line is treated like code (Camel Case is allowed).
                
                Default is S.
                
                C is the slowest to load due to the need to split each line based upon code splitting rules.
                
                Note: this settings does not apply to inline dictionaries or `.trie` files.
              "%
              | optional,
            useCompounds | Bool | doc "Use Compounds." | optional,
          },
      "definitions.DictionaryDefinitionCustom" =
        {
            addWords
              | Bool
              | doc "When `true`, let's the spell checker know that words can be added to this dictionary.",
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            ignoreForbiddenWords
              | Bool
              | doc "Some dictionaries may contain forbidden words to prevent compounding from generating words that are not valid in the language. These are often words that are used in other languages or might be generated through compounding. This setting allows flagged words to be ignored when checking the dictionary. The effect is similar to the word not being in the dictionary."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            noSuggest
              | Bool
              | doc m%"
                Indicate that suggestions should not come from this dictionary. Words in this dictionary are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in this dictionary, it will be removed from the set of possible suggestions.
              "%
              | optional,
            path
              | refs."definitions.CustomDictionaryPath"
              | String
              | doc "Path to custom dictionary text file.",
            repMap
              | refs."definitions.ReplaceMap"
              | Array Dyn
              | doc "Replacement pairs."
              | optional,
            scope
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CustomDictionaryScope", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.CustomDictionaryScope", String ]
                  )
                ]
              | doc m%"
                Defines the scope for when words will be added to the dictionary.
                
                Scope values: `user`, `workspace`, `folder`.
              "%
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            type
              | refs."definitions.DictionaryFileTypes"
              | String
              | doc m%"
                Type of file:
                - S - single word per line,
                - W - each line can contain one or more words separated by space,
                - C - each line is treated like code (Camel Case is allowed).
                
                Default is S.
                
                C is the slowest to load due to the need to split each line based upon code splitting rules.
                
                Note: this settings does not apply to inline dictionaries or `.trie` files.
              "%
              | optional,
            useCompounds | Bool | doc "Use Compounds." | optional,
          },
      "definitions.DictionaryDefinitionInline" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionInlineWords",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionInlineIgnoreWords",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionInlineFlagWords",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."definitions.DictionaryDefinitionInlineSuggestWords",
                  { _ | Dyn }
                ]
            ],
      "definitions.DictionaryDefinitionInlineFlagWords" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct."
              | optional,
          },
      "definitions.DictionaryDefinitionInlineIgnoreWords" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%
              | optional,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`.",
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct."
              | optional,
          },
      "definitions.DictionaryDefinitionInlineSuggestWords" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%
              | optional,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct."
              | optional,
          },
      "definitions.DictionaryDefinitionInlineWords" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%
              | optional,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct.",
          },
      "definitions.DictionaryDefinitionPreferred" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            ignoreForbiddenWords
              | Bool
              | doc "Some dictionaries may contain forbidden words to prevent compounding from generating words that are not valid in the language. These are often words that are used in other languages or might be generated through compounding. This setting allows flagged words to be ignored when checking the dictionary. The effect is similar to the word not being in the dictionary."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            noSuggest
              | Bool
              | doc m%"
                Indicate that suggestions should not come from this dictionary. Words in this dictionary are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in this dictionary, it will be removed from the set of possible suggestions.
              "%
              | optional,
            path
              | refs."definitions.DictionaryPath"
              | String
              | doc "Path to the file.",
            repMap
              | refs."definitions.ReplaceMap"
              | Array Dyn
              | doc "Replacement pairs."
              | optional,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
            type
              | refs."definitions.DictionaryFileTypes"
              | String
              | doc m%"
                Type of file:
                - S - single word per line,
                - W - each line can contain one or more words separated by space,
                - C - each line is treated like code (Camel Case is allowed).
                
                Default is S.
                
                C is the slowest to load due to the need to split each line based upon code splitting rules.
                
                Note: this settings does not apply to inline dictionaries or `.trie` files.
              "%
              | optional,
            useCompounds | Bool | doc "Use Compounds." | optional,
          },
      "definitions.DictionaryDefinitionSimple" =
        {
            description
              | String
              | doc "Optional description of the contents / purpose of the dictionary."
              | optional,
            name
              | refs."definitions.DictionaryId"
              | String
              | doc m%"
                This is the name of a dictionary.
                
                Name Format:
                - Must contain at least 1 number or letter.
                - Spaces are allowed.
                - Leading and trailing space will be removed.
                - Names ARE case-sensitive.
                - Must not contain `*`, `!`, `;`, `,`, `{`, `}`, `[`, `]`, `~`.
              "%,
            supportNonStrictSearches
              | Bool
              | doc m%"
                Strip case and accents to allow for case insensitive searches and words without accents.
                
                Note: this setting only applies to word lists. It has no-impact on trie dictionaries.
              "%
              | optional,
          },
      "definitions.DictionaryFileTypes" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'T, 'C, 'W, 'S |] ],
      "definitions.DictionaryId" =
        js2n.string.Matches "^(?=[^!*,;{}[\\]~\\n]+$)(?=(.*\\w)).+$",
      "definitions.DictionaryInformation" =
        {
            accents
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CharacterSet", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.CharacterSetCosts", { _ | Dyn } ]
                  )
                ]
              | doc m%"
                The accent characters.
                
                Default: `"\u0300-\u0341"`
              "%
              | optional,
            adjustments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PatternAdjustment", { _ | Dyn } ]
              )
              | doc "A collection of patterns to test against the suggested words. If the word matches the pattern, then the penalty is applied."
              | optional,
            alphabet
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CharacterSet", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.CharacterSetCosts", { _ | Dyn } ]
                  )
                ]
              | doc "The alphabet to use."
              | optional,
            costs
              | refs."definitions.EditCosts"
              | { _ | Dyn }
              | doc "Define edit costs."
              | optional,
            hunspellInformation
              | refs."definitions.HunspellInformation"
              | { _ | Dyn }
              | doc "Used by dictionary authors"
              | optional,
            ignore
              | refs."definitions.CharacterSet"
              | String
              | doc m%"
                An optional set of characters that can possibly be removed from a word before checking it.
                
                This is useful in languages like Arabic where Harakat accents are optional.
                
                Note: All matching characters are removed or none. Partial removal is not supported.
              "%
              | optional,
            locale
              | String
              | doc "The locale of the dictionary. Example: `nl,nl-be`"
              | optional,
            suggestionEditCosts
              | refs."definitions.SuggestionCostsDefs"
              | Array Dyn
              | doc "Used in making suggestions. The lower the value, the more likely the suggestion will be near the top of the suggestion list."
              | optional,
          },
      "definitions.DictionaryNegRef" =
        js2n.string.Matches "^(?=!+[^!*,;{}[\\]~\\n]+$)(?=(.*\\w)).+$",
      "definitions.DictionaryPath" = String,
      "definitions.DictionaryRef" =
        std.contract.Sequence [ refs."definitions.DictionaryId", String ],
      "definitions.DictionaryReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.DictionaryRef", String ],
              std.contract.Sequence
                [ refs."definitions.DictionaryNegRef", String ]
            ],
      "definitions.EditCosts" =
        {
            accentCosts
              | Number
              | doc "The cost to add / remove an accent This should be very cheap, it helps with fixing accent issues."
              | optional,
            baseCost
              | Number
              | doc "This is the base cost for making an edit."
              | optional,
            capsCosts
              | Number
              | doc "The cost to change capitalization. This should be very cheap, it helps with fixing capitalization issues."
              | optional,
            firstLetterPenalty
              | Number
              | doc "The extra cost incurred for changing the first letter of a word. This value should be less than `100 - baseCost`."
              | optional,
            nonAlphabetCosts
              | Number
              | doc "This is the cost for characters not in the alphabet."
              | optional,
          },
      "definitions.FSPathResolvable" =
        std.contract.Sequence [ refs."definitions.FsPath", String ],
      "definitions.FeatureEnableOnly" = Bool,
      "definitions.Features" =
        {
            weighted-suggestions
              | refs."definitions.FeatureEnableOnly"
              | Bool
              | doc "Enable/disable using weighted suggestions."
              | optional,
          },
      "definitions.FsDictionaryPath" = String,
      "definitions.FsPath" = String,
      "definitions.Glob" =
        std.contract.Sequence [ refs."definitions.SimpleGlob", String ],
      "definitions.HunspellInformation" =
        {
            aff
              | String
              | doc m%"
                Selected Hunspell AFF content. The content must be UTF-8
                
                Sections:
                - TRY
                - MAP
                - REP
                - KEY
                - ICONV
                - OCONV
                
                Example: ```hunspell # Comment TRY aeistlunkodmrvpgjhäõbüoöfcwzxðqþ` MAP aàâäAÀÂÄ MAP eéèêëEÉÈÊË MAP iîïyIÎÏY MAP oôöOÔÖ MAP (IJ)(Ĳ) ```
              "%,
            costs
              | {
                accentCosts
                  | Number
                  | doc "The cost to add / remove an accent This should be very cheap, it helps with fixing accent issues."
                  | optional,
                baseCost
                  | Number
                  | doc "This is the base cost for making an edit."
                  | optional,
                capsCosts
                  | Number
                  | doc "The cost to change capitalization. This should be very cheap, it helps with fixing capitalization issues."
                  | optional,
                firstLetterPenalty
                  | Number
                  | doc "The extra cost incurred for changing the first letter of a word. This value should be less than `100 - baseCost`."
                  | optional,
                ioConvertCost
                  | Number
                  | doc m%"
                    The cost to convert between convert pairs.
                    
                    The value should be slightly higher than the mapCost.
                  "%
                  | optional,
                keyboardCost
                  | Number
                  | doc m%"
                    The cost of replacing or swapping any adjacent keyboard characters.
                    
                    This should be slightly cheaper than `tryCharCost`.
                  "%
                  | optional,
                mapCost
                  | Number
                  | doc m%"
                    mapSet replacement cost is the cost to substitute one character with another from the same set.
                    
                    Map characters are considered very similar to each other and are often the cause of simple mistakes.
                  "%
                  | optional,
                nonAlphabetCosts
                  | Number
                  | doc "This is the cost for characters not in the alphabet."
                  | optional,
                replaceCosts
                  | Number
                  | doc "The cost to substitute pairs found in the replace settings."
                  | optional,
                tryCharCost
                  | Number
                  | doc "The cost of inserting / deleting / or swapping any `tryChars` Defaults to `baseCosts`"
                  | optional,
              }
              | doc "The costs to apply when using the hunspell settings"
              | optional,
          },
      "definitions.LanguageId" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.LanguageIdSingle", String ],
              std.contract.Sequence
                [ refs."definitions.LanguageIdMultiple", String ],
              std.contract.Sequence
                [ refs."definitions.LanguageIdMultipleNeg", String ]
            ],
      "definitions.LanguageIdMultiple" =
        js2n.string.Matches "^([-\\w_\\s]+)(,[-\\w_\\s]+)*$",
      "definitions.LanguageIdMultipleNeg" =
        js2n.string.Matches "^(![-\\w_\\s]+)(,!?[-\\w_\\s]+)*$",
      "definitions.LanguageIdSingle" =
        js2n.string.Matches "^(!?[-\\w_\\s]+)|(\\*)$",
      "definitions.LanguageSetting" =
        {
            allowCompoundWords
              | Bool
              | doc "True to enable compound word checking."
              | optional,
            caseSensitive
              | Bool
              | doc m%"
                Determines if words must match case and accent rules.
                
                See [Case Sensitivity](https://cspell.org/docs/case-sensitive/) for more details.
                
                - `false` - Case is ignored and accents can be missing on the entire word.   Incorrect accents or partially missing accents will be marked as incorrect.
                - `true` - Case and accents are enforced.
              "%
              | optional,
            description
              | String
              | doc "Optional description of configuration."
              | optional,
            dictionaries
              | Array refs."definitions.DictionaryReference"
              | doc m%"
                Optional list of dictionaries to use. Each entry should match the name of the dictionary.
                
                To remove a dictionary from the list, add `!` before the name.
                
                For example, `!typescript` will turn off the dictionary with the name `typescript`.
                
                See the [Dictionaries](https://cspell.org/docs/dictionaries/) and [Custom Dictionaries](https://cspell.org/docs/dictionaries-custom/) for more details.
              "%
              | optional,
            dictionaryDefinitions
              | Array refs."definitions.DictionaryDefinition"
              | doc m%"
                Define additional available dictionaries.
                
                For example, you can use the following to add a custom dictionary:
                
                ```json "dictionaryDefinitions": [   { "name": "custom-words", "path": "./custom-words.txt"} ], "dictionaries": ["custom-words"] ```
              "%
              | optional,
            enabled | Bool | doc "Is the spell checker enabled." | optional,
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%
              | optional,
            id | String | doc "Optional identifier." | optional,
            ignoreRegExpList
              | refs."definitions.RegExpPatternList"
              | Array Dyn
              | doc m%"
                List of regular expression patterns or pattern names to exclude from spell checking.
                
                Example: `["href"]` - to exclude html href pattern.
                
                Regular expressions use JavaScript regular expression syntax.
                
                Example: to ignore ALL-CAPS words
                
                JSON ```json "ignoreRegExpList": ["/\\b[A-Z]+\\b/g"] ```
                
                YAML ```yaml ignoreRegExpList:   - >-    /\b[A-Z]+\b/g ```
                
                By default, several patterns are excluded. See [Configuration](https://cspell.org/configuration/patterns) for more details.
                
                While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
              "%
              | optional,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
              | optional,
            includeRegExpList
              | refs."definitions.RegExpPatternList"
              | Array Dyn
              | doc m%"
                List of regular expression patterns or defined pattern names to match for spell checking.
                
                If this property is defined, only text matching the included patterns will be checked.
                
                While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
              "%
              | optional,
            languageId
              | refs."definitions.MatchingFileType"
              | doc "The language id.  Ex: `typescript`, `html`, or `php`.  `*` -- will match all languages.",
            local
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.LocaleId", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.LocaleId", String ]
                  )
                ]
              | doc "Deprecated - The locale filter, matches against the language. This can be a comma separated list. `*` will match all locales."
              | optional,
            locale
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.LocaleId", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.LocaleId", String ]
                  )
                ]
              | doc "The locale filter, matches against the language. This can be a comma separated list. `*` will match all locales."
              | optional,
            name | String | doc "Optional name of configuration." | optional,
            noSuggestDictionaries
              | Array refs."definitions.DictionaryReference"
              | doc m%"
                Optional list of dictionaries that will not be used for suggestions. Words in these dictionaries are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in one of these dictionaries, it will be removed from the set of possible suggestions.
              "%
              | optional,
            patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RegExpPatternDefinition", { _ | Dyn } ]
              )
              | doc m%"
                Defines a list of patterns that can be used with the  {@link  ignoreRegExpList }  and  {@link  includeRegExpList }  options.
                
                For example:
                
                ```javascript "ignoreRegExpList": ["comments"], "patterns": [   {     "name": "comment-single-line",     "pattern": "/#.*/g"   },   {     "name": "comment-multi-line",     "pattern": "/(?:\\/\\*[\\s\\S]*?\\*\\/)/g"   },   // You can also combine multiple named patterns into one single named pattern   {     "name": "comments",     "pattern": ["comment-single-line", "comment-multi-line"]   } ] ```
              "%
              | optional,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%
              | optional,
            unknownWords
              | refs."definitions.UnknownWordsChoices"
              | String
              | doc m%"
                Controls how unknown words are handled.
                
                - `report-all` - Report all unknown words (default behavior)
                - `report-simple` - Report unknown words that have simple spelling errors, typos, and flagged words.
                - `report-common-typos` - Report unknown words that are common typos and flagged words.
                - `report-flagged` - Report unknown words that are flagged.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct."
              | optional,
          },
      "definitions.LocaleId" = String,
      "definitions.MatchingFileType" =
        std.contract.any_of
            [
              refs."definitions.LanguageId",
              js2n.array.ArrayOf refs."definitions.LanguageId"
            ],
      "definitions.OverrideSettings" =
        {
            allowCompoundWords
              | Bool
              | doc "True to enable compound word checking."
              | optional,
            caseSensitive
              | Bool
              | doc m%"
                Determines if words must match case and accent rules.
                
                See [Case Sensitivity](https://cspell.org/docs/case-sensitive/) for more details.
                
                - `false` - Case is ignored and accents can be missing on the entire word.   Incorrect accents or partially missing accents will be marked as incorrect.
                - `true` - Case and accents are enforced.
              "%
              | optional,
            description
              | String
              | doc "Optional description of configuration."
              | optional,
            dictionaries
              | Array refs."definitions.DictionaryReference"
              | doc m%"
                Optional list of dictionaries to use. Each entry should match the name of the dictionary.
                
                To remove a dictionary from the list, add `!` before the name.
                
                For example, `!typescript` will turn off the dictionary with the name `typescript`.
                
                See the [Dictionaries](https://cspell.org/docs/dictionaries/) and [Custom Dictionaries](https://cspell.org/docs/dictionaries-custom/) for more details.
              "%
              | optional,
            dictionaryDefinitions
              | Array refs."definitions.DictionaryDefinition"
              | doc m%"
                Define additional available dictionaries.
                
                For example, you can use the following to add a custom dictionary:
                
                ```json "dictionaryDefinitions": [   { "name": "custom-words", "path": "./custom-words.txt"} ], "dictionaries": ["custom-words"] ```
              "%
              | optional,
            enableFiletypes
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LanguageIdSingle", String ]
              )
              | doc m%"
                Enable / Disable checking file types (languageIds).
                
                These are in additional to the file types specified by  {@link  Settings.enabledLanguageIds } . To disable a language, prefix with `!` as in `!json`,
                
                
                **Example: individual file types**
                
                ``` jsonc       // enable checking for jsonc !json       // disable checking for json kotlin      // enable checking for kotlin ```
                
                **Example: enable all file types**
                
                ```
                *           // enable checking for all file types !json       // except for json ```
              "%
              | optional,
            enabled | Bool | doc "Is the spell checker enabled." | optional,
            enabledFileTypes
              | { _ | Bool }
              | doc m%"
                Enable / Disable checking file types (languageIds).
                
                This setting replaces:  {@link  Settings.enabledLanguageIds }  and  {@link  Settings.enableFiletypes } .
                
                A Value of:
                - `true` - enable checking for the file type
                - `false` - disable checking for the file type
                
                A file type of `*` is a wildcard that enables all file types.
                
                **Example: enable all file types**
                
                | File Type | Enabled | Comment | | --------- | ------- | ------- | | `*`       | `true`  | Enable all file types. | | `json`    | `false` | Disable checking for json files. |
              "%
              | optional,
            enabledLanguageIds
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LanguageIdSingle", String ]
              )
              | doc "Specify a list of file types to spell check. It is better to use  {@link  Settings.enabledFileTypes }  to Enable / Disable checking files types."
              | optional,
            filename
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Glob", String ],
                  Array (
                    std.contract.Sequence [ refs."definitions.Glob", String ]
                  )
                ]
              | doc "Glob pattern or patterns to match against.",
            flagWords
              | Array String
              | doc m%"
                List of words to always be considered incorrect. Words found in `flagWords` override `words`.
                
                Format of `flagWords`
                - single word entry - `word`
                - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
                
                Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
              "%
              | optional,
            id | String | doc "Optional identifier." | optional,
            ignoreRandomStrings
              | Bool
              | doc "Ignore sequences of characters that look like random strings."
              | optional,
            ignoreRegExpList
              | refs."definitions.RegExpPatternList"
              | Array Dyn
              | doc m%"
                List of regular expression patterns or pattern names to exclude from spell checking.
                
                Example: `["href"]` - to exclude html href pattern.
                
                Regular expressions use JavaScript regular expression syntax.
                
                Example: to ignore ALL-CAPS words
                
                JSON ```json "ignoreRegExpList": ["/\\b[A-Z]+\\b/g"] ```
                
                YAML ```yaml ignoreRegExpList:   - >-    /\b[A-Z]+\b/g ```
                
                By default, several patterns are excluded. See [Configuration](https://cspell.org/configuration/patterns) for more details.
                
                While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
              "%
              | optional,
            ignoreWords
              | Array String
              | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
              | optional,
            includeRegExpList
              | refs."definitions.RegExpPatternList"
              | Array Dyn
              | doc m%"
                List of regular expression patterns or defined pattern names to match for spell checking.
                
                If this property is defined, only text matching the included patterns will be checked.
                
                While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
              "%
              | optional,
            language
              | refs."definitions.LocaleId"
              | String
              | doc "Sets the locale."
              | optional,
            languageId
              | refs."definitions.MatchingFileType"
              | doc "Sets the programming language id to match file type."
              | optional,
            languageSettings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LanguageSetting", { _ | Dyn } ]
              )
              | doc m%"
                Additional settings for individual languages.
                
                See [Language Settings](https://cspell.org/configuration/language-settings/) for more details.
              "%
              | optional,
            loadDefaultConfiguration
              | Bool
              | doc "By default, the bundled dictionary configurations are loaded. Explicitly setting this to `false` will prevent ALL default configuration from being loaded."
              | optional,
            maxDuplicateProblems
              | Number
              | doc "The maximum number of times the same word can be flagged as an error in a file."
              | optional,
            maxNumberOfProblems
              | Number
              | doc "The maximum number of problems to report in a file."
              | optional,
            minRandomLength
              | Number
              | doc "The minimum length of a random string to be ignored."
              | optional,
            minWordLength
              | Number
              | doc "The minimum length of a word before checking it against a dictionary."
              | optional,
            name | String | doc "Optional name of configuration." | optional,
            noSuggestDictionaries
              | Array refs."definitions.DictionaryReference"
              | doc m%"
                Optional list of dictionaries that will not be used for suggestions. Words in these dictionaries are considered correct, but will not be used when making spell correction suggestions.
                
                Note: if a word is suggested by another dictionary, but found in one of these dictionaries, it will be removed from the set of possible suggestions.
              "%
              | optional,
            numSuggestions
              | Number
              | doc "Number of suggestions to make."
              | optional,
            patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RegExpPatternDefinition", { _ | Dyn } ]
              )
              | doc m%"
                Defines a list of patterns that can be used with the  {@link  ignoreRegExpList }  and  {@link  includeRegExpList }  options.
                
                For example:
                
                ```javascript "ignoreRegExpList": ["comments"], "patterns": [   {     "name": "comment-single-line",     "pattern": "/#.*/g"   },   {     "name": "comment-multi-line",     "pattern": "/(?:\\/\\*[\\s\\S]*?\\*\\/)/g"   },   // You can also combine multiple named patterns into one single named pattern   {     "name": "comments",     "pattern": ["comment-single-line", "comment-multi-line"]   } ] ```
              "%
              | optional,
            pnpFiles
              | Array String
              | doc "The PnP files to search for. Note: `.mjs` files are not currently supported."
              | optional,
            suggestWords
              | Array String
              | doc m%"
                A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
                
                Format of `suggestWords`
                - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
                - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
              "%
              | optional,
            suggestionNumChanges
              | Number
              | doc m%"
                The maximum number of changes allowed on a word to be considered a suggestions.
                
                For example, appending an `s` onto `example` -> `examples` is considered 1 change.
                
                Range: between 1 and 5.
              "%
              | optional,
            suggestionsTimeout
              | Number
              | doc "The maximum amount of time in milliseconds to generate suggestions for a word."
              | optional,
            unknownWords
              | refs."definitions.UnknownWordsChoices"
              | String
              | doc m%"
                Controls how unknown words are handled.
                
                - `report-all` - Report all unknown words (default behavior)
                - `report-simple` - Report unknown words that have simple spelling errors, typos, and flagged words.
                - `report-common-typos` - Report unknown words that are common typos and flagged words.
                - `report-flagged` - Report unknown words that are flagged.
              "%
              | optional,
            usePnP
              | Bool
              | doc m%"
                Packages managers like Yarn 2 use a `.pnp.cjs` file to assist in loading packages stored in the repository.
                
                When true, the spell checker will search up the directory structure for the existence of a PnP file and load it.
              "%
              | optional,
            words
              | Array String
              | doc "List of words to be considered correct."
              | optional,
          },
      "definitions.Pattern" = String,
      "definitions.PatternAdjustment" =
        {
            id | String | doc "Id of the Adjustment, i.e. `short-compound`",
            penalty | Number | doc "The amount of penalty to apply.",
            regexp | String | doc "RegExp pattern to match",
          },
      "definitions.PatternId" = String,
      "definitions.PatternRef" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Pattern", String ],
              std.contract.Sequence [ refs."definitions.PatternId", String ],
              std.contract.Sequence
                [ refs."definitions.PredefinedPatterns", String ]
            ],
      "definitions.PredefinedPatterns" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Everything,
                'UUID,
                'Urls,
                'UnicodeRef,
                'string,
                'SpellCheckerIgnoreInDocSetting,
                'SpellCheckerDisableNext,
                'SpellCheckerDisableLine,
                'SpellCheckerDisableBlock,
                'SpellCheckerDisable,
                'HashStrings,
                'SHA,
                'SshRsa,
                'RsaCert,
                'PublicKey,
                'PhpHereDoc,
                'href,
                'HexValues,
                'EscapeCharacters,
                'Email,
                'CommitHashLink,
                'CommitHash,
                'CSSHexValue,
                'CStyleHexValue,
                'CStyleComment,
                'Base64SingleLine,
                'Base64MultiLine,
                'Base64
              |]
            ],
      "definitions.RegExpPatternDefinition" =
        {
            description | String | doc "Description of the pattern." | optional,
            name
              | refs."definitions.PatternId"
              | String
              | doc "Pattern name, used as an identifier in ignoreRegExpList and includeRegExpList. It is possible to redefine one of the predefined patterns to override its value.",
            pattern
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.Pattern", String ],
                  Array (
                    std.contract.Sequence [ refs."definitions.Pattern", String ]
                  )
                ]
              | doc "RegExp pattern or array of RegExp patterns.",
          },
      "definitions.RegExpPatternList" = Array refs."definitions.PatternRef",
      "definitions.ReplaceEntry" =
        std.contract.Sequence
            [ js2n.array.MaxItems 2, js2n.array.MinItems 2, Array String ],
      "definitions.ReplaceMap" =
        Array (
            std.contract.Sequence [ refs."definitions.ReplaceEntry", Array Dyn ]
          ),
      "definitions.ReporterModuleName" = String,
      "definitions.ReporterOptions" =
        std.contract.Sequence
            [
              refs."definitions.Serializable",
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Number, String ]
            ],
      "definitions.ReporterSettings" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.ReporterModuleName", String ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 1,
                  js2n.array.MinItems 1,
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.ReporterModuleName", String ])
                ],
              std.contract.Sequence
                [
                  js2n.array.MaxItems 2,
                  js2n.array.MinItems 2,
                  js2n.array.Items
                    [
                      std.contract.Sequence
                        [ refs."definitions.ReporterModuleName", String ],
                      std.contract.Sequence
                        [
                          refs."definitions.ReporterOptions",
                          std.contract.any_of
                            [ js2n.Null, Bool, { _ | Dyn }, Number, String ]
                        ]
                    ] js2n.Always
                ]
            ],
      "definitions.Serializable" =
        std.contract.any_of [ js2n.Null, Bool, { _ | Dyn }, Number, String ],
      "definitions.SimpleGlob" = String,
      "definitions.SuggestionCostMapDef" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.CostMapDefReplace", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CostMapDefInsDel", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CostMapDefSwap", { _ | Dyn } ]
            ],
      "definitions.SuggestionCostsDefs" =
        Array refs."definitions.SuggestionCostMapDef",
      "definitions.UnknownWordsChoices" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'report-flagged,
                'report-common-typos,
                'report-simple,
                'report-all
              |]
            ],
      "definitions.Version" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.VersionLatest", String ],
              std.contract.Sequence [ refs."definitions.VersionLegacy", String ]
            ],
      "definitions.VersionLatest" = std.contract.Equal "0.2",
      "definitions.VersionLegacy" = std.contract.Equal "0.1",
    }
    in
  {
      "$schema" | String | doc "Url to JSON Schema" | optional,
      allowCompoundWords
        | Bool
        | doc "True to enable compound word checking."
        | optional,
      cache
        | refs."definitions.CacheSettings"
        | doc "Define cache settings."
        | optional,
      caseSensitive
        | Bool
        | doc m%"
          Determines if words must match case and accent rules.
          
          See [Case Sensitivity](https://cspell.org/docs/case-sensitive/) for more details.
          
          - `false` - Case is ignored and accents can be missing on the entire word.   Incorrect accents or partially missing accents will be marked as incorrect.
          - `true` - Case and accents are enforced.
        "%
        | optional,
      description
        | String
        | doc "Optional description of configuration."
        | optional,
      dictionaries
        | Array refs."definitions.DictionaryReference"
        | doc m%"
          Optional list of dictionaries to use. Each entry should match the name of the dictionary.
          
          To remove a dictionary from the list, add `!` before the name.
          
          For example, `!typescript` will turn off the dictionary with the name `typescript`.
          
          See the [Dictionaries](https://cspell.org/docs/dictionaries/) and [Custom Dictionaries](https://cspell.org/docs/dictionaries-custom/) for more details.
        "%
        | optional,
      dictionaryDefinitions
        | Array refs."definitions.DictionaryDefinition"
        | doc m%"
          Define additional available dictionaries.
          
          For example, you can use the following to add a custom dictionary:
          
          ```json "dictionaryDefinitions": [   { "name": "custom-words", "path": "./custom-words.txt"} ], "dictionaries": ["custom-words"] ```
        "%
        | optional,
      enableFiletypes
        | js2n.array.UniqueItems
        | Array refs."definitions.LanguageIdSingle"
        | doc m%"
          Enable / Disable checking file types (languageIds).
          
          These are in additional to the file types specified by  {@link  Settings.enabledLanguageIds } . To disable a language, prefix with `!` as in `!json`,
          
          
          **Example: individual file types**
          
          ``` jsonc       // enable checking for jsonc !json       // disable checking for json kotlin      // enable checking for kotlin ```
          
          **Example: enable all file types**
          
          ```
          *           // enable checking for all file types !json       // except for json ```
        "%
        | optional,
      enableGlobDot
        | Bool
        | doc m%"
          Enable scanning files and directories beginning with `.` (period).
          
          By default, CSpell does not scan `hidden` files.
        "%
        | optional,
      enabled | Bool | doc "Is the spell checker enabled." | optional,
      enabledFileTypes
        | { _ | Bool }
        | doc m%"
          Enable / Disable checking file types (languageIds).
          
          This setting replaces:  {@link  Settings.enabledLanguageIds }  and  {@link  Settings.enableFiletypes } .
          
          A Value of:
          - `true` - enable checking for the file type
          - `false` - disable checking for the file type
          
          A file type of `*` is a wildcard that enables all file types.
          
          **Example: enable all file types**
          
          | File Type | Enabled | Comment | | --------- | ------- | ------- | | `*`       | `true`  | Enable all file types. | | `json`    | `false` | Disable checking for json files. |
        "%
        | optional,
      enabledLanguageIds
        | js2n.array.UniqueItems
        | Array refs."definitions.LanguageIdSingle"
        | doc "Specify a list of file types to spell check. It is better to use  {@link  Settings.enabledFileTypes }  to Enable / Disable checking files types."
        | optional,
      failFast
        | Bool
        | doc "Exit with non-zero code as soon as an issue/error is encountered (useful for CI or git hooks)"
        | optional,
      features
        | refs."definitions.Features"
        | doc "Configure CSpell features."
        | optional,
      files
        | Array (std.contract.Sequence [ refs."definitions.Glob", String ])
        | doc m%"
          Glob patterns of files to be checked.
          
          Glob patterns are relative to the `globRoot` of the configuration file that defines them.
        "%
        | optional,
      flagWords
        | Array String
        | doc m%"
          List of words to always be considered incorrect. Words found in `flagWords` override `words`.
          
          Format of `flagWords`
          - single word entry - `word`
          - with suggestions - `word:suggestion` or `word->suggestion, suggestions`
          
          Example: ```ts "flagWords": [   "color: colour",   "incase: in case, encase",   "canot->cannot",   "cancelled->canceled" ] ```
        "%
        | optional,
      gitignoreRoot
        | std.contract.any_of
          [ refs."definitions.FsPath", Array refs."definitions.FsPath" ]
        | doc "Tells the spell checker to stop searching for `.gitignore` files when it reaches a matching root."
        | optional,
      globRoot
        | refs."definitions.FSPathResolvable"
        | String
        | doc m%"
          The root to use for glob patterns found in this configuration. Default: location of the configuration file.   For compatibility reasons, config files with version 0.1, the glob root will   default to be `${cwd}`.
          
          Use `globRoot` to define a different location. `globRoot` can be relative to the location of this configuration file. Defining globRoot, does not impact imported configurations.
          
          Special Values:
          - `${cwd}` - will be replaced with the current working directory.
          - `.` - will be the location of the containing configuration file.
        "%
        | optional,
      id | String | doc "Optional identifier." | optional,
      ignorePaths
        | Array (std.contract.Sequence [ refs."definitions.Glob", String ])
        | doc m%"
          Glob patterns of files to be ignored.
          
          Glob patterns are relative to the  {@link  globRoot }  of the configuration file that defines them.
        "%
        | optional,
      ignoreRandomStrings
        | Bool
        | doc "Ignore sequences of characters that look like random strings."
        | optional,
      ignoreRegExpList
        | refs."definitions.RegExpPatternList"
        | doc m%"
          List of regular expression patterns or pattern names to exclude from spell checking.
          
          Example: `["href"]` - to exclude html href pattern.
          
          Regular expressions use JavaScript regular expression syntax.
          
          Example: to ignore ALL-CAPS words
          
          JSON ```json "ignoreRegExpList": ["/\\b[A-Z]+\\b/g"] ```
          
          YAML ```yaml ignoreRegExpList:   - >-    /\b[A-Z]+\b/g ```
          
          By default, several patterns are excluded. See [Configuration](https://cspell.org/configuration/patterns) for more details.
          
          While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
        "%
        | optional,
      ignoreWords
        | Array String
        | doc "List of words to be ignored. An ignored word will not show up as an error, even if it is also in the `flagWords`."
        | optional,
      "import"
        | std.contract.any_of
          [ refs."definitions.FsPath", Array refs."definitions.FsPath" ]
        | doc m%"
          Allows this configuration to inherit configuration for one or more other files.
          
          See [Importing / Extending Configuration](https://cspell.org/configuration/imports/) for more details.
        "%
        | optional,
      includeRegExpList
        | refs."definitions.RegExpPatternList"
        | doc m%"
          List of regular expression patterns or defined pattern names to match for spell checking.
          
          If this property is defined, only text matching the included patterns will be checked.
          
          While you can create your own patterns, you can also leverage several patterns that are [built-in to CSpell](https://cspell.org/types/cspell-types/types/PredefinedPatterns.html).
        "%
        | optional,
      language
        | refs."definitions.LocaleId"
        | doc m%"
          Current active spelling language. This specifies the language locale to use in choosing the general dictionary.
          
          For example:
          
          - "en-GB" for British English.
          - "en,nl" to enable both English and Dutch.
        "%
        | optional,
      languageId
        | refs."definitions.MatchingFileType"
        | doc "Forces the spell checker to assume a give language id. Used mainly as an Override."
        | optional,
      languageSettings
        | Array refs."definitions.LanguageSetting"
        | doc m%"
          Additional settings for individual languages.
          
          See [Language Settings](https://cspell.org/configuration/language-settings/) for more details.
        "%
        | optional,
      loadDefaultConfiguration
        | Bool
        | doc "By default, the bundled dictionary configurations are loaded. Explicitly setting this to `false` will prevent ALL default configuration from being loaded."
        | optional,
      maxDuplicateProblems
        | Number
        | doc "The maximum number of times the same word can be flagged as an error in a file."
        | optional,
      maxNumberOfProblems
        | Number
        | doc "The maximum number of problems to report in a file."
        | optional,
      minRandomLength
        | Number
        | doc "The minimum length of a random string to be ignored."
        | optional,
      minWordLength
        | Number
        | doc "The minimum length of a word before checking it against a dictionary."
        | optional,
      name | String | doc "Optional name of configuration." | optional,
      noConfigSearch
        | Bool
        | doc "Prevents searching for local configuration when checking individual documents."
        | optional,
      noSuggestDictionaries
        | Array refs."definitions.DictionaryReference"
        | doc m%"
          Optional list of dictionaries that will not be used for suggestions. Words in these dictionaries are considered correct, but will not be used when making spell correction suggestions.
          
          Note: if a word is suggested by another dictionary, but found in one of these dictionaries, it will be removed from the set of possible suggestions.
        "%
        | optional,
      numSuggestions | Number | doc "Number of suggestions to make." | optional,
      overrides
        | Array refs."definitions.OverrideSettings"
        | doc m%"
          Overrides are used to apply settings for specific files in your project.
          
          For example:
          
          ```javascript "overrides": [   // Force `*.hrr` and `*.crr` files to be treated as `cpp` files:   {     "filename": "**/{*.hrr,*.crr}",     "languageId": "cpp"   },   // Force `*.txt` to use the Dutch dictionary (Dutch dictionary needs to be installed separately):   {     "language": "nl",     "filename": "**/dutch/**/*.txt"   } ] ```
        "%
        | optional,
      patterns
        | Array refs."definitions.RegExpPatternDefinition"
        | doc m%"
          Defines a list of patterns that can be used with the  {@link  ignoreRegExpList }  and  {@link  includeRegExpList }  options.
          
          For example:
          
          ```javascript "ignoreRegExpList": ["comments"], "patterns": [   {     "name": "comment-single-line",     "pattern": "/#.*/g"   },   {     "name": "comment-multi-line",     "pattern": "/(?:\\/\\*[\\s\\S]*?\\*\\/)/g"   },   // You can also combine multiple named patterns into one single named pattern   {     "name": "comments",     "pattern": ["comment-single-line", "comment-multi-line"]   } ] ```
        "%
        | optional,
      pnpFiles
        | Array String
        | doc "The PnP files to search for. Note: `.mjs` files are not currently supported."
        | optional,
      readonly
        | Bool
        | doc "Indicate that the configuration file should not be modified. This is used to prevent tools like the VS Code Spell Checker from modifying the file to add words and other configuration."
        | optional,
      reporters
        | Array refs."definitions.ReporterSettings"
        | doc m%"
          Define which reports to use. `default` - is a special name for the default cli reporter.
          
          Examples:
          - `["default"]` - to use the default reporter
          - `["@cspell/cspell-json-reporter"]` - use the cspell JSON reporter.
          - `[["@cspell/cspell-json-reporter", { "outFile": "out.json" }]]`
          - `[ "default", ["@cspell/cspell-json-reporter", { "outFile": "out.json" }]]` - Use both the default reporter and the cspell-json-reporter.
        "%
        | optional,
      showStatus | Bool | doc "Show status." | optional,
      spellCheckDelayMs
        | Number
        | doc "Delay in ms after a document has changed before checking it for spelling errors."
        | optional,
      suggestWords
        | Array String
        | doc m%"
          A list of suggested replacements for words. Suggested words provide a way to make preferred suggestions on word replacements. To hint at a preferred change, but not to require it.
          
          Format of `suggestWords`
          - Single suggestion (possible auto fix)     - `word: suggestion`     - `word->suggestion`
          - Multiple suggestions (not auto fixable)    - `word: first, second, third`    - `word->first, second, third`
        "%
        | optional,
      suggestionNumChanges
        | Number
        | doc m%"
          The maximum number of changes allowed on a word to be considered a suggestions.
          
          For example, appending an `s` onto `example` -> `examples` is considered 1 change.
          
          Range: between 1 and 5.
        "%
        | optional,
      suggestionsTimeout
        | Number
        | doc "The maximum amount of time in milliseconds to generate suggestions for a word."
        | optional,
      unknownWords
        | refs."definitions.UnknownWordsChoices"
        | doc m%"
          Controls how unknown words are handled.
          
          - `report-all` - Report all unknown words (default behavior)
          - `report-simple` - Report unknown words that have simple spelling errors, typos, and flagged words.
          - `report-common-typos` - Report unknown words that are common typos and flagged words.
          - `report-flagged` - Report unknown words that are flagged.
        "%
        | optional,
      useGitignore
        | Bool
        | doc "Tells the spell checker to load `.gitignore` files and skip files that match the globs in the `.gitignore` files found."
        | optional,
      usePnP
        | Bool
        | doc m%"
          Packages managers like Yarn 2 use a `.pnp.cjs` file to assist in loading packages stored in the repository.
          
          When true, the spell checker will search up the directory structure for the existence of a PnP file and load it.
        "%
        | optional,
      userWords
        | Array String
        | doc "Words to add to global dictionary -- should only be in the user config file."
        | optional,
      validateDirectives
        | Bool
        | doc "Verify that the in-document directives are correct."
        | optional,
      version
        | refs."definitions.Version"
        | doc m%"
          Configuration format version of the settings file.
          
          This controls how the settings in the configuration file behave.
        "%
        | optional,
      words
        | Array String
        | doc "List of words to be considered correct."
        | optional,
    }