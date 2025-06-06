# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.attachment" =
        {
            description
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message describing the role played by the attachment."
              | optional,
            fileLocation
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "The location of the attachment.",
            rectangles
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.rectangle", { _ | Dyn } ]
              )
              | doc "An array of rectangles specifying areas of interest within the image."
              | optional,
            regions
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.region", { _ | Dyn } ]
              )
              | doc "An array of regions of interest within the attachment."
              | optional,
          },
      "definitions.codeFlow" =
        {
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message relevant to the code flow."
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
            threadFlows
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.threadFlow", { _ | Dyn } ]
              )
              | doc "An array of one or more unique threadFlow objects, each of which describes the progress of a program through a thread of execution.",
          },
      "definitions.conversion" =
        {
            analysisToolLogFiles
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.fileLocation", { _ | Dyn } ]
              )
              | doc "The locations of the analysis tool's per-run log files."
              | optional,
            invocation
              | refs."definitions.invocation"
              | { _ | Dyn }
              | doc "An invocation object that describes the invocation of the converter."
              | optional,
            tool
              | refs."definitions.tool"
              | { _ | Dyn }
              | doc "A tool object that describes the converter.",
          },
      "definitions.edge" =
        {
            id
              | String
              | doc "A string that uniquely identifies the edge within its graph.",
            label
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A short description of the edge."
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
              | doc "Key/value pairs that provide additional information about the edge."
              | optional,
            sourceNodeId
              | String
              | doc "Identifies the source node (the node at which the edge starts).",
            targetNodeId
              | String
              | doc "Identifies the target node (the node at which the edge ends).",
          },
      "definitions.edgeTraversal" =
        {
            edgeId | String | doc "Identifies the edge being traversed.",
            finalState
              | { _ | String }
              | doc "The values of relevant expressions after the edge has been traversed."
              | optional,
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message to display to the user as the edge is traversed."
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
              | doc "Key/value pairs that provide additional information about the edge traversal."
              | optional,
            stepOverEdgeCount
              | std.number.Integer
              | doc "The number of edge traversals necessary to return from a nested graph."
              | optional,
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
              | doc "A plain text message that describes the exception."
              | optional,
            stack
              | refs."definitions.stack"
              | { _ | Dyn }
              | doc "The sequence of function calls leading to the exception."
              | optional,
            ..
          },
      "definitions.file" =
        {
            contents
              | refs."definitions.fileContent"
              | { _ | Dyn }
              | doc "The contents of the file."
              | optional,
            encoding
              | String
              | doc "Specifies the encoding for a file object that refers to a text file."
              | optional,
            fileLocation
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "The location of the file."
              | optional,
            hashes
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.hash", { _ | Dyn } ]
              )
              | doc "An array of hash objects, each of which specifies a hashed value for the file, along with the name of the hash function used to compute the hash."
              | optional,
            lastModifiedTime
              | String
              | doc "The date and time at which the file was most recently modified. See \"Date/time properties\" in the SARIF spec for the required format."
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
            roles
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'uncontrolledFile,
                      'renamedFile,
                      'deletedFile,
                      'addedFile,
                      'modifiedFile,
                      'unmodifiedFile,
                      'traceFile,
                      'standardStream,
                      'resultFile,
                      'responseFile,
                      'attachment,
                      'analysisTarget
                    |]
                  ]
              )
              | doc "The role or roles played by the file in the analysis."
              | optional,
          },
      "definitions.fileChange" =
        {
            fileLocation
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "The location of the file to change.",
            replacements
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.replacement", { _ | Dyn } ]
              )
              | doc "An array of replacement objects, each of which represents the replacement of a single region in a single file specified by 'fileLocation'.",
          },
      "definitions.fileContent" =
        {
            binary
              | String
              | doc "MIME Base64-encoded content from a binary file, or from a text file in its original encoding."
              | optional,
            text
              | String
              | doc "UTF-8-encoded content from a text file."
              | optional,
          },
      "definitions.fileLocation" =
        {
            uri
              | String
              | doc "A string containing a valid relative or absolute URI.",
            uriBaseId
              | String
              | doc "A string which indirectly specifies the absolute URI with respect to which a relative URI in the \"uri\" property is interpreted."
              | optional,
          },
      "definitions.fix" =
        {
            description
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message that describes the proposed fix, enabling viewers to present the proposed change to an end user."
              | optional,
            fileChanges
              | Array (
                std.contract.Sequence
                  [ refs."definitions.fileChange", { _ | Dyn } ]
              )
              | doc "One or more file changes that comprise a fix for a result.",
          },
      "definitions.graph" =
        {
            description
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A description of the graph."
              | optional,
            edges
              | Array (
                std.contract.Sequence [ refs."definitions.edge", { _ | Dyn } ]
              )
              | doc "An array of edge objects representing the edges of the graph.",
            id
              | String
              | doc "A string that uniquely identifies the graph within a run.graphs or result.graphs array.",
            nodes
              | Array (
                std.contract.Sequence [ refs."definitions.node", { _ | Dyn } ]
              )
              | doc "An array of node objects representing the nodes of the graph.",
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the graph."
              | optional,
          },
      "definitions.graphTraversal" =
        {
            description
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A description of this graph traversal."
              | optional,
            edgeTraversals
              | Array (
                std.contract.Sequence
                  [ refs."definitions.edgeTraversal", { _ | Dyn } ]
              )
              | doc "The sequences of edges traversed by this graph traversal.",
            graphId
              | String
              | doc "A string that uniquely identifies that graph being traversed.",
            initialState
              | { _ | String }
              | doc "Values of relevant expressions at the start of the graph traversal."
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
              | doc "Key/value pairs that provide additional information about the graph traversal."
              | optional,
          },
      "definitions.hash" =
        {
            algorithm
              | String
              | doc "The name of the hash function used to compute the hash value specified in the 'value' property.",
            value
              | String
              | doc "The hash value of some file or collection of files, computed by the hash function named in the 'algorithm' property.",
          },
      "definitions.invocation" =
        {
            account
              | String
              | doc "The account that ran the analysis tool."
              | optional,
            arguments
              | Array String
              | doc "An array of strings, containing in order the command line arguments passed to the tool from the operating system."
              | optional,
            attachments
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attachment", { _ | Dyn } ]
              )
              | doc "A set of files relevant to the invocation of the tool."
              | optional,
            commandLine
              | String
              | doc "The command line used to invoke the tool."
              | optional,
            configurationNotifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.notification", { _ | Dyn } ]
              )
              | doc "A list of conditions detected by the tool that are relevant to the tool's configuration."
              | optional,
            endTime
              | String
              | doc "The date and time at which the run ended. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            environmentVariables
              | {  .. }
              | doc "The environment variables associated with the analysis tool process, expressed as key/value pairs."
              | optional,
            executableLocation
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "An absolute URI specifying the location of the analysis tool's executable."
              | optional,
            exitCode
              | std.number.Integer
              | doc "The process exit code."
              | optional,
            exitCodeDescription
              | String
              | doc "The reason for the process exit."
              | optional,
            exitSignalName
              | String
              | doc "The name of the signal that caused the process to exit."
              | optional,
            exitSignalNumber
              | std.number.Integer
              | doc "The numeric value of the signal that caused the process to exit."
              | optional,
            machine
              | String
              | doc "The machine that hosted the analysis tool run."
              | optional,
            processId
              | std.number.Integer
              | doc "The process id for the analysis tool run."
              | optional,
            processStartFailureMessage
              | String
              | doc "The reason given by the operating system that the process failed to start."
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
              | doc "Key/value pairs that provide additional information about the invocation."
              | optional,
            responseFiles
              | Array (
                std.contract.Sequence
                  [ refs."definitions.fileLocation", { _ | Dyn } ]
              )
              | doc "The locations of any response files specified on the tool's command line."
              | optional,
            startTime
              | String
              | doc "The date and time at which the run started. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            stderr
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "A file containing the standard error stream from the process that was invoked."
              | optional,
            stdin
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "A file containing the standard input stream to the process that was invoked."
              | optional,
            stdout
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "A file containing the standard output stream from the process that was invoked."
              | optional,
            stdoutStderr
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "A file containing the interleaved standard output and standard error stream from the process that was invoked."
              | optional,
            toolExecutionSuccessful
              | Bool
              | doc "A value indicating whether the tool's execution completed successfully."
              | optional,
            toolNotifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.notification", { _ | Dyn } ]
              )
              | doc "A list of runtime conditions detected by the tool during the analysis."
              | optional,
            workingDirectory
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "The working directory for the analysis tool run."
              | optional,
          },
      "definitions.location" =
        {
            annotations
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.region", { _ | Dyn } ]
              )
              | doc "A set of regions relevant to the location."
              | optional,
            fullyQualifiedLogicalName
              | String
              | doc "The human-readable fully qualified name of the logical location. If run.logicalLocations is present, this value matches a property name within that object, from which further information about the logical location can be obtained."
              | optional,
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message relevant to the location."
              | optional,
            physicalLocation
              | refs."definitions.physicalLocation"
              | { _ | Dyn }
              | doc "Identifies the file and region."
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
          },
      "definitions.logicalLocation" =
        {
            decoratedName
              | String
              | doc "The machine-readable name for the logical location, such as a mangled function name provided by a C++ compiler that encodes calling convention, return type and other details along with the function name."
              | optional,
            fullyQualifiedName
              | String
              | doc "The human-readable fully qualified name of the logical location."
              | optional,
            kind
              | String
              | doc "The type of construct this logicalLocationComponent refers to. Should be one of 'function', 'member', 'module', 'namespace', 'package', 'parameter', 'resource', 'returnType', 'type', or 'variable', if any of those accurately describe the construct."
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
      "definitions.message" =
        {
            arguments
              | Array String
              | doc "An array of strings to substitute into the message string."
              | optional,
            messageId
              | String
              | doc "The resource id for a plain text message string."
              | optional,
            richMessageId
              | String
              | doc "The resource id for a rich text message string."
              | optional,
            richText | String | doc "A rich text message string." | optional,
            text | String | doc "A plain text message string." | optional,
          },
      "definitions.node" =
        {
            children
              | js2n.array.UniqueItems
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "Array of child nodes."
              | optional,
            id
              | String
              | doc "A string that uniquely identifies the node within its graph.",
            label
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A short description of the node."
              | optional,
            location
              | refs."definitions.location"
              | { _ | Dyn }
              | doc "A code location associated with the node."
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
              | doc "Key/value pairs that provide additional information about the node."
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
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message that describes the condition that was encountered.",
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
              | doc "The stable, unique identifier of the rule (if any) to which this notification is relevant. This member can be used to retrieve rule metadata from the rules dictionary, if it exists."
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
        {
            contextRegion
              | refs."definitions.region"
              | { _ | Dyn }
              | doc "Specifies a portion of the file that encloses the region. Allows a viewer to display additional context around the region."
              | optional,
            fileLocation
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "The location of the file.",
            id
              | std.number.Integer
              | doc "Value that distinguishes this physical location from all other physical locations in this run object."
              | optional,
            region
              | refs."definitions.region"
              | { _ | Dyn }
              | doc "Specifies a portion of the file."
              | optional,
          },
      "definitions.rectangle" =
        {
            bottom
              | Number
              | doc "The Y coordinate of the bottom edge of the rectangle, measured in the image's natural units."
              | optional,
            left
              | Number
              | doc "The X coordinate of the left edge of the rectangle, measured in the image's natural units."
              | optional,
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message relevant to the rectangle."
              | optional,
            right
              | Number
              | doc "The X coordinate of the right edge of the rectangle, measured in the image's natural units."
              | optional,
            top
              | Number
              | doc "The Y coordinate of the top edge of the rectangle, measured in the image's natural units."
              | optional,
          },
      "definitions.region" =
        {
            byteLength
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The length of the region in bytes."
              | optional,
            byteOffset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The zero-based offset from the beginning of the file of the first byte in the region."
              | optional,
            charLength
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The length of the region in characters."
              | optional,
            charOffset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The zero-based offset from the beginning of the file of the first character in the region."
              | optional,
            endColumn
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The column number of the character following the end of the region."
              | optional,
            endLine
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The line number of the last character in the region."
              | optional,
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message relevant to the region."
              | optional,
            snippet
              | refs."definitions.fileContent"
              | { _ | Dyn }
              | doc "The portion of the file contents within the specified region."
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
            deletedRegion
              | refs."definitions.region"
              | { _ | Dyn }
              | doc "The region of the file to delete.",
            insertedContent
              | refs."definitions.fileContent"
              | { _ | Dyn }
              | doc "The content to insert at the location specified by the 'deletedRegion' property."
              | optional,
          },
      "definitions.resources" =
        {
            messageStrings
              | { _ | String }
              | doc "A dictionary, each of whose keys is a resource identifier and each of whose values is a localized string."
              | optional,
            rules
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.rule", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys is a string and each of whose values is a 'rule' object, that describe all rules associated with an analysis tool or a specific run of an analysis tool."
              | optional,
            ..
          },
      "definitions.result" =
        {
            analysisTarget
              | refs."definitions.fileLocation"
              | { _ | Dyn }
              | doc "Identifies the file that the analysis tool was instructed to scan. This need not be the same as the file where the result actually occurred."
              | optional,
            attachments
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.attachment", { _ | Dyn } ]
              )
              | doc "A set of files relevant to the result."
              | optional,
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
            conversionProvenance
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.physicalLocation", { _ | Dyn } ]
              )
              | doc "An array of physicalLocation objects which specify the portions of an analysis tool's output that a converter transformed into the result object."
              | optional,
            correlationGuid
              | String
              | doc "A stable, unique identifier for the equivalence class of logically identical results to which this result belongs, in the form of a GUID."
              | optional,
            fingerprints
              | { _ | String }
              | doc "A set of strings each of which individually defines a stable, unique identity for the result."
              | optional,
            fixes
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.fix", { _ | Dyn } ]
              )
              | doc "An array of 'fix' objects, each of which represents a proposed fix to the problem indicated by the result."
              | optional,
            graphTraversals
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.graphTraversal", { _ | Dyn } ]
              )
              | doc "An array of one or more unique 'graphTraversal' objects."
              | optional,
            graphs
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.graph", { _ | Dyn } ]
              )
              | doc "An array of one or more unique 'graph' objects."
              | optional,
            instanceGuid
              | String
              | doc "A stable, unique identifier for the result in the form of a GUID."
              | optional,
            level
              | std.enum.TagOrString
              | [| 'open, 'error, 'warning, 'note, 'pass, 'notApplicable |]
              | doc "A value specifying the severity level of the result."
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
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message that describes the result. The first sentence of the message only will be displayed when visible space is limited."
              | optional,
            partialFingerprints
              | { _ | String }
              | doc "A set of strings that contribute to the stable, unique identity of the result."
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
                  [ refs."definitions.location", { _ | Dyn } ]
              )
              | doc "A set of locations relevant to this result."
              | optional,
            ruleId
              | String
              | doc "The stable, unique identifier of the rule (if any) to which this notification is relevant. This member can be used to retrieve rule metadata from the rules dictionary, if it exists."
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
              | doc "A set of flags indicating one or more suppression conditions."
              | optional,
            workItemUris
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | doc "The URIs of the work items associated with this result"
              | optional,
          },
      "definitions.rule" =
        {
            configuration
              | refs."definitions.ruleConfiguration"
              | { _ | Dyn }
              | doc "Information about the rule that can be configured at runtime."
              | optional,
            fullDescription
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A description of the rule. Should, as far as possible, provide details sufficient to enable resolution of any problem indicated by the result."
              | optional,
            help
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "Provides the primary documentation for the rule, useful when there is no online documentation."
              | optional,
            helpUri
              | String
              | doc "A URI where the primary documentation for the rule can be found."
              | optional,
            id | String | doc "A stable, opaque identifier for the rule.",
            messageStrings
              | { _ | String }
              | doc "A set of name/value pairs with arbitrary names. The value within each name/value pair consists of plain text interspersed with placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
              | optional,
            name
              | refs."definitions.message"
              | { _ | Dyn }
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
            richMessageStrings
              | { _ | String }
              | doc "A set of name/value pairs with arbitrary names. The value within each name/value pair consists of rich text interspersed with placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
              | optional,
            shortDescription
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A concise description of the rule. Should be a single sentence that is understandable when visible space is limited to a single line of text."
              | optional,
          },
      "definitions.ruleConfiguration" =
        {
            defaultLevel
              | std.enum.TagOrString
              | [| 'open, 'error, 'warning, 'note |]
              | doc "Specifies the default severity level of the result."
              | optional,
            enabled
              | Bool
              | doc "Specifies whether the rule will be evaluated during the scan."
              | optional,
            parameters
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional configuration information."
                  | optional,
                ..
              }
              | doc "Contains configuration information specific to this rule."
              | optional,
          },
      "definitions.run" =
        {
            architecture
              | String
              | doc "The hardware architecture for which the run was targeted."
              | optional,
            automationLogicalId
              | String
              | doc "A global identifier that allows the run to be correlated with other artifacts produced by a larger automation process."
              | optional,
            baselineInstanceGuid
              | String
              | doc "The 'instanceGuid' property of a previous SARIF 'run' that comprises the baseline that was used to compute result 'baselineState' properties for the run."
              | optional,
            columnKind
              | std.enum.TagOrString
              | [| 'unicodeCodePoints, 'utf16CodeUnits |]
              | doc "Specifies the unit in which the tool measures columns."
              | optional,
            conversion
              | refs."definitions.conversion"
              | { _ | Dyn }
              | doc "A conversion object that describes how a converter transformed an analysis tool's native output format into the SARIF format."
              | optional,
            correlationGuid
              | String
              | doc "A stable, unique identifier for the class of related runs to which this run belongs, in the form of a GUID."
              | optional,
            defaultFileEncoding
              | String
              | doc "Specifies the default encoding for any file object that refers to a text file."
              | optional,
            description
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A description of the run."
              | optional,
            files
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.file", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys is a URI and each of whose values is a file object."
              | optional,
            graphs
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.graph", { _ | Dyn } ]
              )
              | doc "An array of one or more unique 'graph' objects."
              | optional,
            instanceGuid
              | String
              | doc "A stable, unique identifier for the run, in the form of a GUID."
              | optional,
            invocations
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.invocation", { _ | Dyn } ]
              )
              | doc "Describes the invocation of the analysis tool."
              | optional,
            logicalId
              | String
              | doc "A logical identifier for a run, for example, 'nightly Clang analyzer run'. Multiple runs of the same type can have the same logical id."
              | optional,
            logicalLocations
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.logicalLocation", { _ | Dyn } ]
              }
              | doc "A dictionary, each of whose keys specifies a logical location such as a namespace, type or function."
              | optional,
            originalUriBaseIds
              | { _ | String }
              | doc "The absolute URI specified by each uriBaseId symbol on the machine where the tool originally ran."
              | optional,
            properties
              | {
                tags
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "A set of distinct strings that provide additional information about the run."
                  | optional,
                ..
              }
              | doc "Key/value pairs that provide additional information about the run."
              | optional,
            redactionToken
              | String
              | doc "The string used to replace sensitive information in a redaction-aware property."
              | optional,
            resources
              | refs."definitions.resources"
              | { _ | Dyn }
              | doc "Items that can be localized, such as message strings and rule metadata."
              | optional,
            results
              | js2n.array.MinItems 0
              | Array (
                std.contract.Sequence [ refs."definitions.result", { _ | Dyn } ]
              )
              | doc "The set of results contained in an SARIF log. The results array can be omitted when a run is solely exporting rules metadata. It must be present (but may be empty) if a log file represents an actual scan."
              | optional,
            richMessageMimeType
              | String
              | doc "The MIME type of all rich text message properties in the run. Default: \"text/markdown;variant=GFM\""
              | optional,
            tool
              | refs."definitions.tool"
              | { _ | Dyn }
              | doc "Information about the tool or tool pipeline that generated the results in this run. A run can only contain results produced by a single tool or tool pipeline. A run can aggregate results from multiple log files, as long as context around the tool run (tool command-line arguments and the like) is identical for all aggregated files.",
            versionControlProvenance
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.versionControlDetails", { _ | Dyn } ]
              )
              | doc "Specifies the revision in version control of the files that were scanned."
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
              | refs."definitions.message"
              | { _ | Dyn }
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
        {
            address
              | std.number.Integer
              | doc "The address of the method or function that is executing."
              | optional,
            location
              | refs."definitions.location"
              | { _ | Dyn }
              | doc "The location to which this stack frame refers."
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
          },
      "definitions.threadFlow" =
        {
            id
              | String
              | doc "An string that uniquely identifies the threadFlow within the codeFlow in which it occurs."
              | optional,
            locations
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.threadFlowLocation", { _ | Dyn } ]
              )
              | doc "A temporally ordered array of 'threadFlowLocation' objects, each of which describes a location visited by the tool while producing the result.",
            message
              | refs."definitions.message"
              | { _ | Dyn }
              | doc "A message relevant to the thread flow."
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
              | doc "Key/value pairs that provide additional information about the thread flow."
              | optional,
            ..
          },
      "definitions.threadFlowLocation" =
        {
            executionOrder
              | std.number.Integer
              | doc "An integer representing the temporal order in which execution reached this location."
              | optional,
            importance
              | std.enum.TagOrString
              | [| 'unimportant, 'essential, 'important |]
              | doc "Specifies the importance of this location in understanding the code flow in which it occurs. The order from most to least important is \"essential\", \"important\", \"unimportant\". Default: \"important\"."
              | optional,
            kind
              | String
              | doc "A string describing the type of this location."
              | optional,
            location
              | refs."definitions.location"
              | { _ | Dyn }
              | doc "The code location."
              | optional,
            module
              | String
              | doc "The name of the module that contains the code that is executing."
              | optional,
            nestingLevel
              | std.number.Integer
              | doc "An integer representing a containment hierarchy within the thread flow"
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
            stack
              | refs."definitions.stack"
              | { _ | Dyn }
              | doc "The call stack leading to this location."
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
            timestamp
              | String
              | doc "The time at which this location was executed."
              | optional,
          },
      "definitions.tool" =
        {
            downloadUri
              | String
              | doc "The absolute URI from which the tool can be downloaded."
              | optional,
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
      "definitions.versionControlDetails" =
        {
            branch
              | String
              | doc "The name of a branch containing the revision."
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
              | doc "Key/value pairs that provide additional information about the revision."
              | optional,
            revisionId
              | String
              | doc "A string that uniquely and permanently identifies the revision within the repository."
              | optional,
            tag
              | String
              | doc "A tag that has been applied to the revision."
              | optional,
            timestamp
              | String
              | doc "The date and time at which the revision was created."
              | optional,
            uri | String | doc "The absolute URI of the repository.",
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
        | [| '"2.0.0" |]
        | doc "The SARIF format version of this log file.",
    }