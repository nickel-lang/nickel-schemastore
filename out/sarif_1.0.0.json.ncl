# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.annotatedCodeLocation" =
        {
            annotations
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.annotation", { _ | Dyn } ]
              )
              | doc "A set of messages relevant to the current annotated code location."
              | optional,
            essential
              | Bool
              | doc "OBSOLETE (use \"importance\" instead): True if this location is essential to understanding the code flow in which it occurs."
              | optional,
            fullyQualifiedLogicalName
              | String
              | doc "The fully qualified name of the method or function that is executing."
              | optional,
            id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ],
                  js2n.string.Matches "^[1-9][0-9]*$"
                ]
              | doc "OBSOLETE (use \"step\" instead): An identifier for the location, unique within the scope of the code flow within which it occurs."
              | optional,
            importance
              | std.enum.TagOrString
              | [| 'unimportant, 'essential, 'important |]
              | doc "Specifies the importance of this location in understanding the code flow in which it occurs. The order from most to least important is \"essential\", \"important\", \"unimportant\". Default: \"important\"."
              | optional,
            kind
              | std.enum.TagOrString
              | [|
                'usage,
                'functionReturn,
                'functionExit,
                'functionEnter,
                'declaration,
                'continuation,
                'callReturn,
                'call,
                'branch,
                'assignment,
                'alias
              |]
              | doc "Categorizes the location."
              | optional,
            logicalLocationKey
              | String
              | doc "A key used to retrieve the annotation's logicalLocation from the logicalLocations dictionary."
              | optional,
            message
              | String
              | doc "A message relevant to this annotation."
              | optional,
            module
              | String
              | doc "The name of the module that contains the code that is executing."
              | optional,
            physicalLocation
              | refs."definitions.physicalLocation"
              | { _ | Dyn }
              | doc "A file location to which this annotation refers."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the code location."
              | optional,
            snippet
              | String
              | doc "The source code at the specified location."
              | optional,
            state
              | { _ | Dyn }
              | doc "A dictionary, each of whose keys specifies a variable or expression, the associated value of which represents the variable or expression value. For an annotation of kind 'continuation', for example, this dictionary might hold the current assumed values of a set of global variables."
              | optional,
            step
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The 0-based sequence number of the location in the code flow within which it occurs."
              | optional,
            taintKind
              | std.enum.TagOrString
              | [| 'sanitizer, 'sink, 'source |]
              | doc "Classifies state transitions in code locations relevant to a taint analysis."
              | optional,
            target
              | String
              | doc "The fully qualified name of the target on which this location operates. For an annotation of kind 'call', for example, the target refers to the fully qualified logical name of the function called from this location."
              | optional,
            targetKey
              | String
              | doc "A key used to retrieve the target's logicalLocation from the logicalLocations dictionary."
              | optional,
            threadId
              | std.number.Integer
              | doc "The thread identifier of the code that is executing."
              | optional,
            values
              | Array String
              | doc "An ordered set of strings that comprise input or return values for the current operation. For an annotation of kind 'call', for example, this property may hold the ordered list of arguments passed to the callee."
              | optional,
          },
      "definitions.annotation" =
        {
            locations
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.physicalLocation", { _ | Dyn } ]
              )
              | doc "An array of 'physicalLocation' objects associated with the annotation.",
            message | String | doc "A message relevant to a code location",
            ..
          },
      "definitions.codeFlow" =
        {
            locations
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.annotatedCodeLocation", { _ | Dyn } ]
              )
              | doc "An array of 'annotatedCodeLocation' objects, each of which describes a single location visited by the tool in the course of producing the result.",
            message
              | String
              | doc "A message relevant to the code flow"
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the code flow."
              | optional,
            ..
          },
      "definitions.exception" =
        {
            innerExceptions
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "An array of exception objects each of which is considered a cause of this exception."
              | optional,
            kind
              | String
              | doc "A string that identifies the kind of exception, for example, the fully qualified type name of an object that was thrown, or the symbolic name of a signal."
              | optional,
            message
              | String
              | doc "A string that describes the exception."
              | optional,
            stack
              | refs."definitions.stack"
              | { _ | Dyn }
              | doc "The sequence of function calls leading to the exception."
              | optional,
            ..
          },
      "definitions.file" =
        std.contract.Sequence
            [
              js2n.record.DependentFields { uriBaseId = [ "uri" ], },
              {
                contents
                  | String
                  | doc "The contents of the file, expressed as a MIME Base64-encoded byte sequence."
                  | optional,
                hashes
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.hash", { _ | Dyn } ]
                  )
                  | doc "An array of hash objects, each of which specifies a hashed value for the file, along with the name of the algorithm used to compute the hash."
                  | optional,
                length
                  | std.number.Integer
                  | doc "The length of the file in bytes."
                  | optional,
                mimeType
                  | js2n.string.Matches "[^/]+/.+"
                  | doc "The MIME type (RFC 2045) of the file."
                  | optional,
                offset
                  | std.number.Integer
                  | doc "The offset in bytes of the file within its containing file."
                  | optional,
                parentKey
                  | String
                  | doc "Identifies the key of the immediate parent of the file, if this file is nested."
                  | optional,
                properties
                  | {
                    tags
                      | js2n.array.UniqueItems
                      | Array String
                      | doc "A set of distinct strings that provide additional information."
                      | optional,
                    ..
                  }
                  | doc "Key/value pairs that provide additional information about the file."
                  | optional,
                uri
                  | String
                  | doc "The path to the file within its containing file."
                  | optional,
                uriBaseId
                  | String
                  | doc "A string that identifies the conceptual base for the 'uri' property (if it is relative), e.g.,'$(SolutionDir)' or '%SRCROOT%'."
                  | optional,
              }
            ],
      "definitions.fileChange" =
        std.contract.Sequence
            [
              js2n.record.DependentFields { uriBaseId = [ "uri" ], },
              {
                replacements
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.replacement", { _ | Dyn } ]
                  )
                  | doc "An array of replacement objects, each of which represents the replacement of a single range of bytes in a single file specified by 'uri'.",
                uri
                  | String
                  | doc "A string that represents the location of the file to change as a valid URI.",
                uriBaseId
                  | String
                  | doc "A string that identifies the conceptual base for the 'uri' property (if it is relative), e.g.,'$(SolutionDir)' or '%SRCROOT%'."
                  | optional,
              }
            ],
      "definitions.fix" =
        {
            description
              | String
              | doc "A string that describes the proposed fix, enabling viewers to present a proposed change to an end user.",
            fileChanges
              | Array (
                std.contract.Sequence
                  [ refs."definitions.fileChange", { _ | Dyn } ]
              )
              | doc "One or more file changes that comprise a fix for a result.",
          },
      "definitions.formattedRuleMessage" =
        {
            arguments
              | Array String
              | doc "An array of strings that will be used, in combination with a message format, to construct a result message."
              | optional,
            formatId
              | String
              | doc "A string that identifies the message format used to format the message that describes this result. The value of formatId must correspond to one of the names in the set of name/value pairs contained in the 'messageFormats' property of the rule object whose 'id' property matches the 'ruleId' property of this result.",
          },
      "definitions.hash" =
        {
            algorithm
              | std.enum.TagOrString
              | [|
                'whirlpool,
                'tlsh,
                'tiger,
                'swifft,
                'ssdeep,
                'spectralHash,
                'snefru,
                'skein,
                'sha3,
                'sha512,
                'sha384,
                'sha256,
                'sha224,
                'sha1,
                'sdhash,
                'ripeMD320,
                'ripeMD160,
                'ripeMD128,
                'ripeMD,
                'radioGatun,
                'md6,
                'md5,
                'md4,
                'md2,
                'jh,
                'haval,
                'has160,
                'groestl,
                'gost,
                'fsb,
                'ecoh,
                'blake512,
                'blake256,
                'authentihash
              |]
              | doc "The name of the algorithm used to compute the hash value specified in the 'value' property.",
            value
              | String
              | doc "The hash value of some file or collection of files, computed by the algorithm named in the 'algorithm' property.",
          },
      "definitions.invocation" =
        {
            account
              | String
              | doc "The account that ran the analysis tool."
              | optional,
            commandLine
              | String
              | doc "The command line used to invoke the tool."
              | optional,
            endTime
              | String
              | doc "The date and time at which the run ended. See \"Date/time properties\" in the  SARIF spec for the required format."
              | optional,
            environmentVariables
              | {  .. }
              | doc "The environment variables associated with the analysis tool process, expressed as key/value pairs."
              | optional,
            fileName
              | String
              | doc "The fully qualified path to the analysis tool."
              | optional,
            machine
              | String
              | doc "The machine that hosted the analysis tool run."
              | optional,
            processId
              | std.number.Integer
              | doc "The process id for the analysis tool run."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the run."
              | optional,
            responseFiles
              | {  .. }
              | doc "The contents of any response files specified on the tool's command line."
              | optional,
            startTime
              | String
              | doc "The date and time at which the run started. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            workingDirectory
              | String
              | doc "The working directory for the analysis rool run."
              | optional,
          },
      "definitions.location" =
        {
            analysisTarget
              | refs."definitions.physicalLocation"
              | { _ | Dyn }
              | doc "Identifies the file that the analysis tool was instructed to scan. This need not be the same as the file where the result actually occurred."
              | optional,
            decoratedName
              | String
              | doc "The machine-readable fully qualified name for the logical location where the analysis tool produced the result, such as the mangled function name provided by a C++ compiler that encodes calling convention, return type and other details along with the function name."
              | optional,
            fullyQualifiedLogicalName
              | String
              | doc "The human-readable fully qualified name of the logical location where the analysis tool produced the result. If 'logicalLocationKey' is not specified, this member is can used to retrieve the location logicalLocation from the logicalLocations dictionary, if one exists."
              | optional,
            logicalLocationKey
              | String
              | doc "A key used to retrieve the location logicalLocation from the logicalLocations dictionary, when the string specified by 'fullyQualifiedLogicalName' is not unique."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the location."
              | optional,
            resultFile
              | refs."definitions.physicalLocation"
              | { _ | Dyn }
              | doc "Identifies the file where the analysis tool produced the result."
              | optional,
          },
      "definitions.logicalLocation" =
        {
            kind
              | String
              | doc "The type of construct this logicalLocationComponent refers to. Should be one of 'function', 'member', 'module', 'namespace', 'package', 'resource', or 'type', if any of those accurately describe the construct."
              | optional,
            name
              | String
              | doc "Identifies the construct in which the result occurred. For example, this property might contain the name of a class or a method."
              | optional,
            parentKey
              | String
              | doc "Identifies the key of the immediate parent of the construct in which the result was detected. For example, this property might point to a logical location that represents the namespace that holds a type."
              | optional,
          },
      "definitions.notification" =
        {
            exception
              | refs."definitions.exception"
              | { _ | Dyn }
              | doc "The runtime exception, if any, relevant to this notification."
              | optional,
            id
              | String
              | doc "An identifier for the condition that was encountered."
              | optional,
            level
              | std.enum.TagOrString
              | [| 'error, 'warning, 'note |]
              | doc "A value specifying the severity level of the notification."
              | optional,
            message
              | String
              | doc "A string that describes the condition that was encountered.",
            physicalLocation
              | refs."definitions.physicalLocation"
              | { _ | Dyn }
              | doc "The file and region relevant to this notification."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the notification."
              | optional,
            ruleId
              | String
              | doc "The stable, unique identifier of the rule (if any) to which this notification is relevant. If 'ruleKey' is not specified, this member can be used to retrieve rule metadata from the rules dictionary, if it exists."
              | optional,
            ruleKey
              | String
              | doc "A key used to retrieve the rule metadata from the rules dictionary that is relevant to the notification."
              | optional,
            threadId
              | std.number.Integer
              | doc "The thread identifier of the code that generated the notification."
              | optional,
            time
              | String
              | doc "The date and time at which the analysis tool generated the notification."
              | optional,
          },
      "definitions.physicalLocation" =
        std.contract.Sequence
            [
              js2n.record.DependentFields { uriBaseId = [ "uri" ], },
              {
                region
                  | refs."definitions.region"
                  | { _ | Dyn }
                  | doc "The region within the file where the result was detected."
                  | optional,
                uri
                  | String
                  | doc "The location of the file as a valid URI."
                  | optional,
                uriBaseId
                  | String
                  | doc "A string that identifies the conceptual base for the 'uri' property (if it is relative), e.g.,'$(SolutionDir)' or '%SRCROOT%'."
                  | optional,
              }
            ],
      "definitions.region" =
        {
            endColumn
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The column number of the last character in the region."
              | optional,
            endLine
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The line number of the last character in the region."
              | optional,
            length
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The length of the region in bytes or characters."
              | optional,
            offset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The zero-based offset from the beginning of the file of the first byte or character in the region."
              | optional,
            startColumn
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The column number of the first character in the region."
              | optional,
            startLine
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The line number of the first character in the region."
              | optional,
          },
      "definitions.replacement" =
        {
            deletedLength
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The number of bytes to delete, starting at the byte offset specified by offset, measured from the beginning of the file."
              | optional,
            insertedBytes
              | String
              | doc "The MIME Base64-encoded byte sequence to be inserted at the byte offset specified by the 'offset' property, measured from the beginning of the file."
              | optional,
            offset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "A non-negative integer specifying the offset in bytes from the beginning of the file at which bytes are to be removed, inserted or both. An offset of 0 shall denote the first byte in the file.",
          },
      "definitions.result" =
        {
            baselineState
              | std.enum.TagOrString
              | [| 'absent, 'existing, 'new |]
              | doc "The state of a result relative to a baseline of a previous run."
              | optional,
            codeFlows
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.codeFlow", { _ | Dyn } ]
              )
              | doc "An array of 'codeFlow' objects relevant to the result."
              | optional,
            fixes
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.fix", { _ | Dyn } ]
              )
              | doc "An array of 'fix' objects, each of which represents a proposed fix to the problem indicated by the result."
              | optional,
            formattedRuleMessage
              | refs."definitions.formattedRuleMessage"
              | { _ | Dyn }
              | doc "A 'formattedRuleMessage' object that can be used to construct a formatted message that describes the result. If the 'formattedMessage' property is present on a result, the 'fullMessage' property shall not be present. If the 'fullMessage' property is present on an result, the 'formattedMessage' property shall not be present"
              | optional,
            id | String | doc "A unique identifier for the result." | optional,
            level
              | std.enum.TagOrString
              | [| 'error, 'warning, 'note, 'pass, 'notApplicable |]
              | doc "A value specifying the severity level of the result. If this property is not present, its implied value is 'warning'."
              | optional,
            locations
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.location", { _ | Dyn } ]
              )
              | doc "One or more locations where the result occurred. Specify only one location unless the problem indicated by the result can only be corrected by making a change at every specified location."
              | optional,
            message
              | String
              | doc "A string that describes the result. The first sentence of the message only will be displayed when visible space is limited."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the result."
              | optional,
            relatedLocations
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.annotatedCodeLocation", { _ | Dyn } ]
              )
              | doc "A grouped set of locations and messages, if available, that represent code areas that are related to this result."
              | optional,
            ruleId
              | String
              | doc "The stable, unique identifier of the rule (if any) to which this notification is relevant. If 'ruleKey' is not specified, this member can be used to retrieve rule metadata from the rules dictionary, if it exists."
              | optional,
            ruleKey
              | String
              | doc "A key used to retrieve the rule metadata from the rules dictionary that is relevant to the notification."
              | optional,
            snippet
              | String
              | doc "A source code or other file fragment that illustrates the result."
              | optional,
            stacks
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.stack", { _ | Dyn } ]
              )
              | doc "An array of 'stack' objects relevant to the result."
              | optional,
            suppressionStates
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'suppressedExternally, 'suppressedInSource |]
                  ]
              )
              | optional,
            toolFingerprintContribution
              | String
              | doc "A string that contributes to the unique identity of the result."
              | optional,
          },
      "definitions.rule" =
        {
            defaultLevel
              | std.enum.TagOrString
              | [| 'error, 'warning, 'note |]
              | doc "A value specifying the default severity level of the result."
              | optional,
            fullDescription
              | String
              | doc "A string that describes the rule. Should, as far as possible, provide details sufficient to enable resolution of any problem indicated by the result."
              | optional,
            helpUri
              | String
              | doc "A URI where the primary documentation for the rule can be found."
              | optional,
            id | String | doc "A stable, opaque identifier for the rule.",
            messageFormats
              | { _ | Dyn }
              | doc "A set of name/value pairs with arbitrary names. The value within each name/value pair shall consist of plain text interspersed with placeholders, which can be used to format a message in combination with an arbitrary number of additional string arguments."
              | optional,
            name
              | String
              | doc "A rule identifier that is understandable to an end user."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the rule."
              | optional,
            shortDescription
              | String
              | doc "A concise description of the rule. Should be a single sentence that is understandable when visible space is limited to a single line of text."
              | optional,
          },
      "definitions.run" =
        {
            architecture
              | String
              | doc "The hardware architecture for which the run was targeted."
              | optional,
            automationId
              | String
              | doc "A global identifier that allows the run to be correlated with other artifacts produced by a larger automation process."
              | optional,
            baselineId
              | String
              | doc "The 'id' property of a separate (potentially external) SARIF 'run' instance that comprises the baseline that was used to compute result 'baselineState' properties for the run."
              | optional,
            configurationNotifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.notification", { _ | Dyn } ]
              )
              | doc "A list of conditions detected by the tool that are relevant to the tool's configuration."
              | optional,
            files
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.file", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys is a URI and each of whose values is an array of file objects representing the location of a single file scanned during the run."
              | optional,
            id | String | doc "An identifier for the run." | optional,
            invocation
              | refs."definitions.invocation"
              | { _ | Dyn }
              | doc "Describes the runtime environment, including parameterization, of the analysis tool run."
              | optional,
            logicalLocations
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.logicalLocation", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys specifies a logical location such as a namespace, type or function."
              | optional,
            results
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.result", { _ | Dyn } ]
              )
              | doc "The set of results contained in an SARIF log. The results array can be omitted when a run is solely exporting rules metadata. It must be present (but may be empty) in the event that a log file represents an actual scan."
              | optional,
            rules
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.rule", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys is a string and each of whose values is a 'rule' object, that describe all rules associated with an analysis tool or a specific run of an analysis tool."
              | optional,
            stableId
              | String
              | doc "A stable identifier for a run, for example, 'nightly Clang analyzer run'. Multiple runs of the same type can have the same stableId."
              | optional,
            tool
              | refs."definitions.tool"
              | { _ | Dyn }
              | doc "Information about the tool or tool pipeline that generated the results in this run. A run can only contain results produced by a single tool or tool pipeline. A run can aggregate results from multiple log files, as long as context around the tool run (tool command-line arguments and the like) is identical for all aggregated files.",
            toolNotifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.notification", { _ | Dyn } ]
              )
              | doc "A list of runtime conditions detected by the tool in the course of the analysis."
              | optional,
          },
      "definitions.stack" =
        {
            frames
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.stackFrame", { _ | Dyn } ]
              )
              | doc "An array of stack frames that represent a sequence of calls, rendered in reverse chronological order, that comprise the call stack.",
            message
              | String
              | doc "A message relevant to this call stack."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the stack."
              | optional,
          },
      "definitions.stackFrame" =
        std.contract.Sequence
            [
              js2n.record.DependentFields
                {
                  column = [ "line" ],
                  line = [ "uri" ],
                  uriBaseId = [ "uri" ],
                },
              {
                address
                  | std.number.Integer
                  | doc "The address of the method or function that is executing."
                  | optional,
                column
                  | std.number.Integer
                  | doc "The line of the location to which this stack frame refers."
                  | optional,
                fullyQualifiedLogicalName
                  | String
                  | doc "The fully qualified name of the method or function that is executing.",
                line
                  | std.number.Integer
                  | doc "The line of the location to which this stack frame refers."
                  | optional,
                logicalLocationKey
                  | String
                  | doc "A key used to retrieve the stack frame logicalLocation from the logicalLocations dictionary, when the 'fullyQualifiedLogicalName' is not unique."
                  | optional,
                message
                  | String
                  | doc "A message relevant to this stack frame."
                  | optional,
                module
                  | String
                  | doc "The name of the module that contains the code of this stack frame."
                  | optional,
                offset
                  | std.number.Integer
                  | doc "The offset from the method or function that is executing."
                  | optional,
                parameters
                  | Array String
                  | doc "The parameters of the call that is executing."
                  | optional,
                properties
                  | {
                    tags
                      | js2n.array.UniqueItems
                      | Array String
                      | doc "A set of distinct strings that provide additional information."
                      | optional,
                    ..
                  }
                  | doc "Key/value pairs that provide additional information about the stack frame."
                  | optional,
                threadId
                  | std.number.Integer
                  | doc "The thread identifier of the stack frame."
                  | optional,
                uri
                  | String
                  | doc "The uri of the source code file to which this stack frame refers."
                  | optional,
                uriBaseId
                  | String
                  | doc "A string that identifies the conceptual base for the 'uri' property (if it is relative), e.g.,'$(SolutionDir)' or '%SRCROOT%'."
                  | optional,
              }
            ],
      "definitions.tool" =
        {
            fileVersion
              | js2n.string.Matches "[0-9]+(\\.[0-9]+){3}"
              | doc "The binary version of the tool's primary executable file (for operating systems such as Windows that provide that information)."
              | optional,
            fullName
              | String
              | doc "The name of the tool along with its version and any other useful identifying information, such as its locale."
              | optional,
            language
              | String
              | doc "The tool language (expressed as an ISO 649 two-letter lowercase culture code) and region (expressed as an ISO 3166 two-letter uppercase subculture code associated with a country or region)."
              | optional,
            name | String | doc "The name of the tool.",
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the tool."
              | optional,
            sarifLoggerVersion
              | String
              | doc "A version that uniquely identifies the SARIF logging component that generated this file, if it is versioned separately from the tool."
              | optional,
            semanticVersion
              | String
              | doc "The tool version in the format specified by Semantic Versioning 2.0."
              | optional,
            version
              | String
              | doc "The tool version, in whatever format the tool natively provides."
              | optional,
          },
    }
    in
  {
      "$schema"
        | String
        | doc "The URI of the JSON schema corresponding to the version."
        | optional,
      runs
        | js2n.array.MinItems 1
        | Array refs."definitions.run"
        | doc "The set of runs contained in this log file.",
      version
        | std.enum.TagOrString
        | [| '"1.0.0" |]
        | doc "The SARIF format version of this log file.",
    }