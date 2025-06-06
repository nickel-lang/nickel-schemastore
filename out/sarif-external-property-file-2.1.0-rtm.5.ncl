# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.addresses.items" =
        {
            absoluteAddress
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The address expressed as a byte offset from the start of the addressable region."
              | optional,
            fullyQualifiedName
              | String
              | doc "A human-readable fully qualified name that is associated with the address."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within run.addresses of the cached object for this address."
              | optional,
            kind
              | String
              | doc "An open-ended string that identifies the address kind. 'data', 'function', 'header','instruction', 'module', 'page', 'section', 'segment', 'stack', 'stackFrame', 'table' are well-known values."
              | optional,
            length
              | std.number.Integer
              | doc "The number of bytes in this range of addresses."
              | optional,
            name
              | String
              | doc "A name that is associated with the address, e.g., '.text'."
              | optional,
            offsetFromParent
              | std.number.Integer
              | doc "The byte offset of this address from the absolute or relative address of the parent object."
              | optional,
            parentIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within run.addresses of the parent object."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the address."
              | optional,
            relativeAddress
              | std.number.Integer
              | doc "The address expressed as a byte offset from the absolute address of the top-most parent object."
              | optional,
          },
      "properties.graphs.items" =
        {
            description
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A description of the graph."
              | optional,
            edges
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  id
                    | String
                    | doc "A string that uniquely identifies the edge within its graph.",
                  label
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the edge."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the edge."
                    | optional,
                  sourceNodeId
                    | String
                    | doc "Identifies the source node (the node at which the edge starts).",
                  targetNodeId
                    | String
                    | doc "Identifies the target node (the node at which the edge ends).",
                }
              | doc "An array of edge objects representing the edges of the graph."
              | optional,
            nodes
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  children
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array (
                      std.contract.Sequence
                        [
                          refs."properties.graphs.items.properties.nodes.items",
                          { _ | Dyn }
                        ]
                    )
                    | doc "Array of child nodes."
                    | optional,
                  id
                    | String
                    | doc "A string that uniquely identifies the node within its graph.",
                  label
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the node."
                    | optional,
                  location
                    | refs."properties.results.items.properties.locations.items"
                    | { _ | Dyn }
                    | doc "A code location associated with the node."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the node."
                    | optional,
                }
              | doc "An array of node objects representing the nodes of the graph."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the graph."
              | optional,
          },
      "properties.graphs.items.properties.nodes.items" =
        {
            children
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "Array of child nodes."
              | optional,
            id
              | String
              | doc "A string that uniquely identifies the node within its graph.",
            label
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A short description of the node."
              | optional,
            location
              | refs."properties.results.items.properties.locations.items"
              | { _ | Dyn }
              | doc "A code location associated with the node."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the node."
              | optional,
          },
      "properties.invocations.items" =
        {
            account
              | String
              | doc "The account under which the invocation occurred."
              | optional,
            arguments
              | js2n.array.MinItems 0
              | Array String
              | doc "An array of strings, containing in order the command line arguments passed to the tool from the operating system."
              | optional,
            commandLine
              | String
              | doc "The command line used to invoke the tool."
              | optional,
            endTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the invocation ended. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            environmentVariables
              | { _ | String }
              | doc "The environment variables associated with the analysis tool process, expressed as key/value pairs."
              | optional,
            executableLocation
              | js2n.Always
              | doc "An absolute URI specifying the location of the executable that was invoked."
              | optional,
            executionSuccessful
              | Bool
              | doc "Specifies whether the tool's execution completed successfully.",
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
              | doc "The machine on which the invocation occurred."
              | optional,
            notificationConfigurationOverrides
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.invocations.items.properties.ruleConfigurationOverrides.items",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of configurationOverride objects that describe notifications related runtime overrides."
              | optional,
            processId
              | std.number.Integer
              | doc "The id of the process in which the invocation occurred."
              | optional,
            processStartFailureMessage
              | String
              | doc "The reason given by the operating system that the process failed to start."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the invocation."
              | optional,
            responseFiles
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array js2n.Always
              | doc "The locations of any response files specified on the tool's command line."
              | optional,
            ruleConfigurationOverrides
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  configuration
                    | js2n.Always
                    | doc "Specifies how the rule or notification was configured during the scan.",
                  descriptor
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the descriptor whose configuration was overridden.",
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the configuration override."
                    | optional,
                }
              | doc "An array of configurationOverride objects that describe rules related runtime overrides."
              | optional,
            startTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the invocation started. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            stderr
              | js2n.Always
              | doc "A file containing the standard error stream from the process that was invoked."
              | optional,
            stdin
              | js2n.Always
              | doc "A file containing the standard input stream to the process that was invoked."
              | optional,
            stdout
              | js2n.Always
              | doc "A file containing the standard output stream from the process that was invoked."
              | optional,
            stdoutStderr
              | js2n.Always
              | doc "A file containing the interleaved standard output and standard error stream from the process that was invoked."
              | optional,
            toolConfigurationNotifications
              | js2n.array.MinItems 0
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.invocations.items.properties.toolExecutionNotifications.items",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of conditions detected by the tool that are relevant to the tool's configuration."
              | optional,
            toolExecutionNotifications
              | js2n.array.MinItems 0
              | Array
                {
                  associatedRule
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the rule descriptor associated with this notification."
                    | optional,
                  descriptor
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the descriptor relevant to this notification."
                    | optional,
                  exception
                    | js2n.Always
                    | doc "The runtime exception, if any, relevant to this notification."
                    | optional,
                  level
                    | std.enum.TagOrString
                    | [| 'error, 'warning, 'note, 'none |]
                    | doc "A value specifying the severity level of the notification."
                    | optional,
                  locations
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array (
                      std.contract.Sequence
                        [
                          refs."properties.results.items.properties.locations.items",
                          { _ | Dyn }
                        ]
                    )
                    | doc "The locations relevant to this notification."
                    | optional,
                  message
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message that describes the condition that was encountered.",
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the notification."
                    | optional,
                  threadId
                    | std.number.Integer
                    | doc "The thread identifier of the code that generated the notification."
                    | optional,
                  timeUtc
                    | String
                    | doc "The Coordinated Universal Time (UTC) date and time at which the analysis tool generated the notification."
                    | optional,
                }
              | doc "A list of runtime conditions detected by the tool during the analysis."
              | optional,
            workingDirectory
              | js2n.Always
              | doc "The working directory for the invocation."
              | optional,
          },
      "properties.invocations.items.properties.ruleConfigurationOverrides.items" =
        {
            configuration
              | js2n.Always
              | doc "Specifies how the rule or notification was configured during the scan.",
            descriptor
              | refs."properties.results.items.properties.taxa.items"
              | { _ | Dyn }
              | doc "A reference used to locate the descriptor whose configuration was overridden.",
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the configuration override."
              | optional,
          },
      "properties.invocations.items.properties.toolExecutionNotifications.items" =
        {
            associatedRule
              | refs."properties.results.items.properties.taxa.items"
              | { _ | Dyn }
              | doc "A reference used to locate the rule descriptor associated with this notification."
              | optional,
            descriptor
              | refs."properties.results.items.properties.taxa.items"
              | { _ | Dyn }
              | doc "A reference used to locate the descriptor relevant to this notification."
              | optional,
            exception
              | js2n.Always
              | doc "The runtime exception, if any, relevant to this notification."
              | optional,
            level
              | std.enum.TagOrString
              | [| 'error, 'warning, 'note, 'none |]
              | doc "A value specifying the severity level of the notification."
              | optional,
            locations
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.results.items.properties.locations.items",
                    { _ | Dyn }
                  ]
              )
              | doc "The locations relevant to this notification."
              | optional,
            message
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A message that describes the condition that was encountered.",
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the notification."
              | optional,
            threadId
              | std.number.Integer
              | doc "The thread identifier of the code that generated the notification."
              | optional,
            timeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the analysis tool generated the notification."
              | optional,
          },
      "properties.logicalLocations.items" =
        {
            decoratedName
              | String
              | doc "The machine-readable name for the logical location, such as a mangled function name provided by a C++ compiler that encodes calling convention, return type and other details along with the function name."
              | optional,
            fullyQualifiedName
              | String
              | doc "The human-readable fully qualified name of the logical location."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the logical locations array."
              | optional,
            kind
              | String
              | doc "The type of construct this logical location component refers to. Should be one of 'function', 'member', 'module', 'namespace', 'parameter', 'resource', 'returnType', 'type', 'variable', 'object', 'array', 'property', 'value', 'element', 'text', 'attribute', 'comment', 'declaration', 'dtd' or 'processingInstruction', if any of those accurately describe the construct."
              | optional,
            name
              | String
              | doc "Identifies the construct in which the result occurred. For example, this property might contain the name of a class or a method."
              | optional,
            parentIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "Identifies the index of the immediate parent of the construct in which the result was detected. For example, this property might point to a logical location that represents the namespace that holds a type."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the logical location."
              | optional,
          },
      "properties.policies.items" =
        {
            associatedComponent
              | js2n.Always
              | doc "The component which is strongly associated with this component. For a translation, this refers to the component which has been translated. For an extension, this is the driver that provides the extension's plugin model."
              | optional,
            contents
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'nonLocalizedData, 'localizedData |]
                  ]
              )
              | doc "The kinds of data contained in this object."
              | optional,
            dottedQuadFileVersion
              | js2n.string.Matches "[0-9]+(\\.[0-9]+){3}"
              | doc "The binary version of the tool component's primary executable file expressed as four non-negative integers separated by a period (for operating systems that express file versions in this way)."
              | optional,
            downloadUri
              | String
              | doc "The absolute URI from which the tool component can be downloaded."
              | optional,
            fullDescription
              | js2n.Always
              | doc "A comprehensive description of the tool component."
              | optional,
            fullName
              | String
              | doc "The name of the tool component along with its version and any other useful identifying information, such as its locale."
              | optional,
            globalMessageStrings
              | {
                _ | {
                  markdown
                    | String
                    | doc "A Markdown message string or format string."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the message."
                    | optional,
                  text
                    | String
                    | doc "A plain text message string or format string.",
                }
              }
              | doc "A dictionary, each of whose keys is a resource identifier and each of whose values is a multiformatMessageString object, which holds message strings in plain text and (optionally) Markdown format. The strings can include placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
              | optional,
            guid
              | js2n.string.Matches
                "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
              | doc "A unique identifier for the tool component in the form of a GUID."
              | optional,
            informationUri
              | String
              | doc "The absolute URI at which information about this version of the tool component can be found."
              | optional,
            isComprehensive
              | Bool
              | doc "Specifies whether this object contains a complete definition of the localizable and/or non-localizable data for this component, as opposed to including only data that is relevant to the results persisted to this log file."
              | optional,
            language
              | js2n.string.Matches "^[a-zA-Z]{2}|^[a-zA-Z]{2}-[a-zA-Z]{2}?$"
              | doc "The language of the messages emitted into the log file during this run (expressed as an ISO 639-1 two-letter lowercase language code) and an optional region (expressed as an ISO 3166-1 two-letter uppercase subculture code associated with a country or region). The casing is recommended but not required (in order for this data to conform to RFC5646)."
              | optional,
            localizedDataSemanticVersion
              | String
              | doc "The semantic version of the localized strings defined in this component; maintained by components that provide translations."
              | optional,
            locations
              | js2n.array.MinItems 0
              | Array
                {
                  description
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the artifact location."
                    | optional,
                  index
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "The index within the run artifacts array of the artifact object associated with the artifact location."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the artifact location."
                    | optional,
                  uri
                    | String
                    | doc "A string containing a valid relative or absolute URI."
                    | optional,
                  uriBaseId
                    | String
                    | doc "A string which indirectly specifies the absolute URI with respect to which a relative URI in the \"uri\" property is interpreted."
                    | optional,
                }
              | doc "An array of the artifactLocation objects associated with the tool component."
              | optional,
            minimumRequiredLocalizedDataSemanticVersion
              | String
              | doc "The minimum value of localizedDataSemanticVersion required in translations consumed by this component; used by components that consume translations."
              | optional,
            name | String | doc "The name of the tool component.",
            notifications
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array js2n.Always
              | doc "An array of reportingDescriptor objects relevant to the notifications related to the configuration and runtime execution of the tool component."
              | optional,
            organization
              | String
              | doc "The organization or company that produced the tool component."
              | optional,
            product
              | String
              | doc "A product suite to which the tool component belongs."
              | optional,
            productSuite
              | String
              | doc "A localizable string containing the name of the suite of products to which the tool component belongs."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the tool component."
              | optional,
            releaseDateUtc
              | String
              | doc "A string specifying the UTC date (and optionally, the time) of the component's release."
              | optional,
            rules
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array js2n.Always
              | doc "An array of reportingDescriptor objects relevant to the analysis performed by the tool component."
              | optional,
            semanticVersion
              | String
              | doc "The tool component version in the format specified by Semantic Versioning 2.0."
              | optional,
            shortDescription
              | js2n.Always
              | doc "A brief description of the tool component."
              | optional,
            supportedTaxonomies
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  guid
                    | js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    | doc "The 'guid' property of the referenced toolComponent."
                    | optional,
                  index
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "An index into the referenced toolComponent in tool.extensions."
                    | optional,
                  name
                    | String
                    | doc "The 'name' property of the referenced toolComponent."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the toolComponentReference."
                    | optional,
                }
              | doc "An array of toolComponentReference objects to declare the taxonomies supported by the tool component."
              | optional,
            taxa
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  defaultConfiguration
                    | {
                      enabled
                        | Bool
                        | doc "Specifies whether the report may be produced during the scan."
                        | optional,
                      level
                        | std.enum.TagOrString
                        | [| 'error, 'warning, 'note, 'none |]
                        | doc "Specifies the failure level for the report."
                        | optional,
                      parameters
                        | refs."properties.properties"
                        | { _ | Dyn }
                        | doc "Contains configuration information specific to a report."
                        | optional,
                      properties
                        | refs."properties.properties"
                        | { _ | Dyn }
                        | doc "Key/value pairs that provide additional information about the reporting configuration."
                        | optional,
                      rank
                        | js2n.number.Maximum 100
                        | js2n.number.Minimum (-1)
                        | doc "Specifies the relative priority of the report. Used for analysis output only."
                        | optional,
                    }
                    | doc "Default reporting configuration information."
                    | optional,
                  deprecatedGuids
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array (
                      js2n.string.Matches
                        "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    )
                    | doc "An array of unique identifies in the form of a GUID by which this report was known in some previous version of the analysis tool."
                    | optional,
                  deprecatedIds
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "An array of stable, opaque identifiers by which this report was known in some previous version of the analysis tool."
                    | optional,
                  deprecatedNames
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "An array of readable identifiers by which this report was known in some previous version of the analysis tool."
                    | optional,
                  fullDescription
                    | js2n.Always
                    | doc "A description of the report. Should, as far as possible, provide details sufficient to enable resolution of any problem indicated by the result."
                    | optional,
                  guid
                    | js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    | doc "A unique identifier for the reporting descriptor in the form of a GUID."
                    | optional,
                  help
                    | js2n.Always
                    | doc "Provides the primary documentation for the report, useful when there is no online documentation."
                    | optional,
                  helpUri
                    | String
                    | doc "A URI where the primary documentation for the report can be found."
                    | optional,
                  id
                    | String
                    | doc "A stable, opaque identifier for the report.",
                  messageStrings
                    | { _ | js2n.Always }
                    | doc "A set of name/value pairs with arbitrary names. Each value is a multiformatMessageString object, which holds message strings in plain text and (optionally) Markdown format. The strings can include placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
                    | optional,
                  name
                    | String
                    | doc "A report identifier that is understandable to an end user."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the report."
                    | optional,
                  relationships
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      {
                        description
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A description of the reporting descriptor relationship."
                          | optional,
                        kinds
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "A set of distinct strings that categorize the relationship. Well-known kinds include 'canPrecede', 'canFollow', 'willPrecede', 'willFollow', 'superset', 'subset', 'equal', 'disjoint', 'relevant', and 'incomparable'."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | { _ | Dyn }
                          | doc "Key/value pairs that provide additional information about the reporting descriptor reference."
                          | optional,
                        target
                          | refs."properties.results.items.properties.taxa.items"
                          | { _ | Dyn }
                          | doc "A reference to the related reporting descriptor.",
                      }
                    | doc "An array of objects that describe relationships between this reporting descriptor and others."
                    | optional,
                  shortDescription
                    | js2n.Always
                    | doc "A concise description of the report. Should be a single sentence that is understandable when visible space is limited to a single line of text."
                    | optional,
                }
              | doc "An array of reportingDescriptor objects relevant to the definitions of both standalone and tool-defined taxonomies."
              | optional,
            translationMetadata
              | {
                downloadUri
                  | String
                  | doc "The absolute URI from which the translation metadata can be downloaded."
                  | optional,
                fullDescription
                  | js2n.Always
                  | doc "A comprehensive description of the translation metadata."
                  | optional,
                fullName
                  | String
                  | doc "The full name associated with the translation metadata."
                  | optional,
                informationUri
                  | String
                  | doc "The absolute URI from which information related to the translation metadata can be downloaded."
                  | optional,
                name
                  | String
                  | doc "The name associated with the translation metadata.",
                properties
                  | refs."properties.properties"
                  | { _ | Dyn }
                  | doc "Key/value pairs that provide additional information about the translation metadata."
                  | optional,
                shortDescription
                  | js2n.Always
                  | doc "A brief description of the translation metadata."
                  | optional,
              }
              | doc "Translation metadata, required for a translation, not populated by other component types."
              | optional,
            version
              | String
              | doc "The tool component version, in whatever format the component natively provides."
              | optional,
          },
      "properties.properties" =
        {
            tags
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array String
              | doc "A set of distinct strings that provide additional information."
              | optional,
            ..
          },
      "properties.results.items.properties.locations.items" =
        {
            annotations
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  byteLength
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "The length of the region in bytes."
                    | optional,
                  byteOffset
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "The zero-based offset from the beginning of the artifact of the first byte in the region."
                    | optional,
                  charLength
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "The length of the region in characters."
                    | optional,
                  charOffset
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "The zero-based offset from the beginning of the artifact of the first character in the region."
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
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message relevant to the region."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the region."
                    | optional,
                  snippet
                    | refs."properties.webRequests.items.properties.body"
                    | { _ | Dyn }
                    | doc "The portion of the artifact contents within the specified region."
                    | optional,
                  sourceLanguage
                    | String
                    | doc "Specifies the source language, if any, of the portion of the artifact specified by the region object."
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
                }
              | doc "A set of regions relevant to the location."
              | optional,
            id
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "Value that distinguishes this location from all other locations within a single result object."
              | optional,
            logicalLocations
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."properties.logicalLocations.items", { _ | Dyn } ]
              )
              | doc "The logical locations associated with the result."
              | optional,
            message
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A message relevant to the location."
              | optional,
            physicalLocation
              | refs."properties.results.items.properties.provenance.properties.conversionSources.items"
              | { _ | Dyn }
              | doc "Identifies the artifact and region."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the location."
              | optional,
            relationships
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  description
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A description of the location relationship."
                    | optional,
                  kinds
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "A set of distinct strings that categorize the relationship. Well-known kinds include 'includes', 'isIncludedBy' and 'relevant'."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the location relationship."
                    | optional,
                  target
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "A reference to the related location.",
                }
              | doc "An array of objects that describe relationships between this location and others."
              | optional,
          },
      "properties.results.items.properties.message" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "text" ],
                  js2n.record.Required [ "id" ]
                ],
              {
                arguments
                  | js2n.array.MinItems 0
                  | Array String
                  | doc "An array of strings to substitute into the message string."
                  | optional,
                id | String | doc "The identifier for this message." | optional,
                markdown | String | doc "A Markdown message string." | optional,
                properties
                  | refs."properties.properties"
                  | { _ | Dyn }
                  | doc "Key/value pairs that provide additional information about the message."
                  | optional,
                text | String | doc "A plain text message string." | optional,
              }
            ],
      "properties.results.items.properties.provenance.properties.conversionSources.items" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "address" ],
                  js2n.record.Required [ "artifactLocation" ]
                ],
              {
                address
                  | refs."properties.addresses.items"
                  | { _ | Dyn }
                  | doc "The address of the location."
                  | optional,
                artifactLocation
                  | js2n.Always
                  | doc "The location of the artifact."
                  | optional,
                contextRegion
                  | js2n.Always
                  | doc "Specifies a portion of the artifact that encloses the region. Allows a viewer to display additional context around the region."
                  | optional,
                properties
                  | refs."properties.properties"
                  | { _ | Dyn }
                  | doc "Key/value pairs that provide additional information about the physical location."
                  | optional,
                region
                  | js2n.Always
                  | doc "Specifies a portion of the artifact."
                  | optional,
              }
            ],
      "properties.results.items.properties.stacks.items" =
        {
            frames
              | js2n.array.MinItems 0
              | Array
                {
                  location
                    | refs."properties.results.items.properties.locations.items"
                    | { _ | Dyn }
                    | doc "The location to which this stack frame refers."
                    | optional,
                  module
                    | String
                    | doc "The name of the module that contains the code of this stack frame."
                    | optional,
                  parameters
                    | js2n.array.MinItems 0
                    | Array String
                    | doc "The parameters of the call that is executing."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | { _ | Dyn }
                    | doc "Key/value pairs that provide additional information about the stack frame."
                    | optional,
                  threadId
                    | std.number.Integer
                    | doc "The thread identifier of the stack frame."
                    | optional,
                }
              | doc "An array of stack frames that represents a sequence of calls, rendered in reverse chronological order, that comprise the call stack.",
            message
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A message relevant to this call stack."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the stack."
              | optional,
          },
      "properties.results.items.properties.taxa.items" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "index" ],
                  js2n.record.Required [ "guid" ],
                  js2n.record.Required [ "id" ]
                ],
              {
                guid
                  | js2n.string.Matches
                    "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                  | doc "A guid that uniquely identifies the descriptor."
                  | optional,
                id | String | doc "The id of the descriptor." | optional,
                index
                  | std.number.Integer
                  | js2n.number.Minimum (-1)
                  | doc "The index into an array of descriptors in toolComponent.ruleDescriptors, toolComponent.notificationDescriptors, or toolComponent.taxonomyDescriptors, depending on context."
                  | optional,
                properties
                  | refs."properties.properties"
                  | { _ | Dyn }
                  | doc "Key/value pairs that provide additional information about the reporting descriptor reference."
                  | optional,
                toolComponent
                  | js2n.Always
                  | doc "A reference used to locate the toolComponent associated with the descriptor."
                  | optional,
              }
            ],
      "properties.threadFlowLocations.items" =
        {
            executionOrder
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "An integer representing the temporal order in which execution reached this location."
              | optional,
            executionTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which this location was executed."
              | optional,
            importance
              | std.enum.TagOrString
              | [| 'unimportant, 'essential, 'important |]
              | doc "Specifies the importance of this location in understanding the code flow in which it occurs. The order from most to least important is \"essential\", \"important\", \"unimportant\". Default: \"important\"."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run threadFlowLocations array."
              | optional,
            kinds
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array String
              | doc "A set of distinct strings that categorize the thread flow location. Well-known kinds include 'acquire', 'release', 'enter', 'exit', 'call', 'return', 'branch', 'implicit', 'false', 'true', 'caution', 'danger', 'unknown', 'unreachable', 'taint', 'function', 'handler', 'lock', 'memory', 'resource', 'scope' and 'value'."
              | optional,
            location
              | refs."properties.results.items.properties.locations.items"
              | { _ | Dyn }
              | doc "The code location."
              | optional,
            module
              | String
              | doc "The name of the module that contains the code that is executing."
              | optional,
            nestingLevel
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "An integer representing a containment hierarchy within the thread flow."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the threadflow location."
              | optional,
            stack
              | refs."properties.results.items.properties.stacks.items"
              | { _ | Dyn }
              | doc "The call stack leading to this location."
              | optional,
            state
              | { _ | js2n.Always }
              | doc "A dictionary, each of whose keys specifies a variable or expression, the associated value of which represents the variable or expression value. For an annotation of kind 'continuation', for example, this dictionary might hold the current assumed values of a set of global variables."
              | optional,
            taxa
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.results.items.properties.taxa.items",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of references to rule or taxonomy reporting descriptors that are applicable to the thread flow location."
              | optional,
            webRequest
              | refs."properties.webRequests.items"
              | { _ | Dyn }
              | doc "A web request associated with this thread flow location."
              | optional,
            webResponse
              | refs."properties.webResponses.items"
              | { _ | Dyn }
              | doc "A web response associated with this thread flow location."
              | optional,
          },
      "properties.webRequests.items" =
        {
            body
              | {
                binary
                  | String
                  | doc "MIME Base64-encoded content from a binary artifact, or from a text artifact in its original encoding."
                  | optional,
                properties
                  | refs."properties.properties"
                  | { _ | Dyn }
                  | doc "Key/value pairs that provide additional information about the artifact content."
                  | optional,
                rendered
                  | js2n.Always
                  | doc "An alternate rendered representation of the artifact (e.g., a decompiled representation of a binary region)."
                  | optional,
                text
                  | String
                  | doc "UTF-8-encoded content from a text artifact."
                  | optional,
              }
              | doc "The body of the request."
              | optional,
            headers | { _ | String } | doc "The request headers." | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run.webRequests array of the request object associated with this result."
              | optional,
            method
              | String
              | doc "The HTTP method. Well-known values are 'GET', 'PUT', 'POST', 'DELETE', 'PATCH', 'HEAD', 'OPTIONS', 'TRACE', 'CONNECT'."
              | optional,
            parameters
              | { _ | String }
              | doc "The request parameters."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the request."
              | optional,
            protocol
              | String
              | doc "The request protocol. Example: 'http'."
              | optional,
            target | String | doc "The target of the request." | optional,
            version
              | String
              | doc "The request version. Example: '1.1'."
              | optional,
          },
      "properties.webRequests.items.properties.body" =
        {
            binary
              | String
              | doc "MIME Base64-encoded content from a binary artifact, or from a text artifact in its original encoding."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the artifact content."
              | optional,
            rendered
              | js2n.Always
              | doc "An alternate rendered representation of the artifact (e.g., a decompiled representation of a binary region)."
              | optional,
            text
              | String
              | doc "UTF-8-encoded content from a text artifact."
              | optional,
          },
      "properties.webResponses.items" =
        {
            body
              | refs."properties.webRequests.items.properties.body"
              | { _ | Dyn }
              | doc "The body of the response."
              | optional,
            headers | { _ | String } | doc "The response headers." | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run.webResponses array of the response object associated with this result."
              | optional,
            noResponseReceived
              | Bool
              | doc "Specifies whether a response was received from the server."
              | optional,
            properties
              | refs."properties.properties"
              | { _ | Dyn }
              | doc "Key/value pairs that provide additional information about the response."
              | optional,
            protocol
              | String
              | doc "The response protocol. Example: 'http'."
              | optional,
            reasonPhrase
              | String
              | doc "The response reason. Example: 'Not found'."
              | optional,
            statusCode
              | std.number.Integer
              | doc "The response status code. Example: 451."
              | optional,
            version
              | String
              | doc "The response version. Example: '1.1'."
              | optional,
          },
    }
    in
  {
      "$schema"
        | String
        | doc "The URI of the JSON schema corresponding to the version of the external property file format."
        | optional,
      addresses
        | js2n.array.MinItems 0
        | Array
          {
            absoluteAddress
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The address expressed as a byte offset from the start of the addressable region."
              | optional,
            fullyQualifiedName
              | String
              | doc "A human-readable fully qualified name that is associated with the address."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within run.addresses of the cached object for this address."
              | optional,
            kind
              | String
              | doc "An open-ended string that identifies the address kind. 'data', 'function', 'header','instruction', 'module', 'page', 'section', 'segment', 'stack', 'stackFrame', 'table' are well-known values."
              | optional,
            length
              | std.number.Integer
              | doc "The number of bytes in this range of addresses."
              | optional,
            name
              | String
              | doc "A name that is associated with the address, e.g., '.text'."
              | optional,
            offsetFromParent
              | std.number.Integer
              | doc "The byte offset of this address from the absolute or relative address of the parent object."
              | optional,
            parentIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within run.addresses of the parent object."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the address."
              | optional,
            relativeAddress
              | std.number.Integer
              | doc "The address expressed as a byte offset from the absolute address of the top-most parent object."
              | optional,
          }
        | doc "Addresses that will be merged with with an external run."
        | optional,
      artifacts
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            contents
              | refs."properties.webRequests.items.properties.body"
              | doc "The contents of the artifact."
              | optional,
            description
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A short description of the artifact."
              | optional,
            encoding
              | String
              | doc "Specifies the encoding for an artifact object that refers to a text file."
              | optional,
            hashes
              | { _ | String }
              | doc "A dictionary, each of whose keys is the name of a hash function and each of whose values is the hashed value of the artifact produced by the specified hash function."
              | optional,
            lastModifiedTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the artifact was most recently modified. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            length
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The length of the artifact in bytes."
              | optional,
            location
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The location of the artifact."
              | optional,
            mimeType
              | js2n.string.Matches "[^/]+/.+"
              | doc "The MIME type (RFC 2045) of the artifact."
              | optional,
            offset
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The offset in bytes of the artifact within its containing artifact."
              | optional,
            parentIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "Identifies the index of the immediate parent of the artifact, if this artifact is nested."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the artifact."
              | optional,
            roles
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'debugOutputFile,
                      'toolSpecifiedConfiguration,
                      'userSpecifiedConfiguration,
                      'directory,
                      'memoryContents,
                      'referencedOnCommandLine,
                      'policy,
                      'taxonomy,
                      'translation,
                      'extension,
                      'driver,
                      'uncontrolled,
                      'renamed,
                      'deleted,
                      'added,
                      'modified,
                      'unmodified,
                      'tracedFile,
                      'standardStream,
                      'resultFile,
                      'responseFile,
                      'attachment,
                      'analysisTarget
                    |]
                  ]
              )
              | doc "The role or roles played by the artifact in the analysis."
              | optional,
            sourceLanguage
              | String
              | doc "Specifies the source language for any artifact object that refers to a text file that contains source code."
              | optional,
          }
        | doc "An array of artifact objects that will be merged with an external run."
        | optional,
      conversion
        | {
          analysisToolLogFiles
            | js2n.array.MinItems 0
            | js2n.array.UniqueItems
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "The locations of the analysis tool's per-run log files."
            | optional,
          invocation
            | refs."properties.invocations.items"
            | doc "An invocation object that describes the invocation of the converter."
            | optional,
          properties
            | refs."properties.properties"
            | doc "Key/value pairs that provide additional information about the conversion."
            | optional,
          tool
            | {
              driver
                | refs."properties.policies.items"
                | doc "The analysis tool that was run.",
              extensions
                | js2n.array.MinItems 0
                | js2n.array.UniqueItems
                | Array refs."properties.policies.items"
                | doc "Tool extensions that contributed to or reconfigured the analysis tool that was run."
                | optional,
              properties
                | refs."properties.properties"
                | doc "Key/value pairs that provide additional information about the tool."
                | optional,
            }
            | doc "A tool object that describes the converter.",
        }
        | doc "A conversion object that will be merged with an external run."
        | optional,
      driver
        | refs."properties.policies.items"
        | doc "The analysis tool object that will be merged with an external run."
        | optional,
      extensions
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array refs."properties.policies.items"
        | doc "Tool extensions that will be merged with an external run."
        | optional,
      externalizedProperties
        | refs."properties.properties"
        | doc "Key/value pairs that provide additional information that will be merged with an external run."
        | optional,
      graphs
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            description
              | refs."properties.results.items.properties.message"
              | { _ | Dyn }
              | doc "A description of the graph."
              | optional,
            edges
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  id
                    | String
                    | doc "A string that uniquely identifies the edge within its graph.",
                  label
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the edge."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the edge."
                    | optional,
                  sourceNodeId
                    | String
                    | doc "Identifies the source node (the node at which the edge starts).",
                  targetNodeId
                    | String
                    | doc "Identifies the target node (the node at which the edge ends).",
                }
              | doc "An array of edge objects representing the edges of the graph."
              | optional,
            nodes
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  children
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      refs."properties.graphs.items.properties.nodes.items"
                    | doc "Array of child nodes."
                    | optional,
                  id
                    | String
                    | doc "A string that uniquely identifies the node within its graph.",
                  label
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the node."
                    | optional,
                  location
                    | refs."properties.results.items.properties.locations.items"
                    | doc "A code location associated with the node."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the node."
                    | optional,
                }
              | doc "An array of node objects representing the nodes of the graph."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the graph."
              | optional,
          }
        | doc "An array of graph objects that will be merged with an external run."
        | optional,
      guid
        | js2n.string.Matches
          "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
        | doc "A stable, unique identifier for this external properties object, in the form of a GUID."
        | optional,
      invocations
        | js2n.array.MinItems 0
        | Array
          {
            account
              | String
              | doc "The account under which the invocation occurred."
              | optional,
            arguments
              | js2n.array.MinItems 0
              | Array String
              | doc "An array of strings, containing in order the command line arguments passed to the tool from the operating system."
              | optional,
            commandLine
              | String
              | doc "The command line used to invoke the tool."
              | optional,
            endTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the invocation ended. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            environmentVariables
              | { _ | String }
              | doc "The environment variables associated with the analysis tool process, expressed as key/value pairs."
              | optional,
            executableLocation
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "An absolute URI specifying the location of the executable that was invoked."
              | optional,
            executionSuccessful
              | Bool
              | doc "Specifies whether the tool's execution completed successfully.",
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
              | doc "The machine on which the invocation occurred."
              | optional,
            notificationConfigurationOverrides
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                refs."properties.invocations.items.properties.ruleConfigurationOverrides.items"
              | doc "An array of configurationOverride objects that describe notifications related runtime overrides."
              | optional,
            processId
              | std.number.Integer
              | doc "The id of the process in which the invocation occurred."
              | optional,
            processStartFailureMessage
              | String
              | doc "The reason given by the operating system that the process failed to start."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the invocation."
              | optional,
            responseFiles
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "The locations of any response files specified on the tool's command line."
              | optional,
            ruleConfigurationOverrides
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  configuration
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "Specifies how the rule or notification was configured during the scan.",
                  descriptor
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the descriptor whose configuration was overridden.",
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the configuration override."
                    | optional,
                }
              | doc "An array of configurationOverride objects that describe rules related runtime overrides."
              | optional,
            startTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which the invocation started. See \"Date/time properties\" in the SARIF spec for the required format."
              | optional,
            stderr
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A file containing the standard error stream from the process that was invoked."
              | optional,
            stdin
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A file containing the standard input stream to the process that was invoked."
              | optional,
            stdout
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A file containing the standard output stream from the process that was invoked."
              | optional,
            stdoutStderr
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A file containing the interleaved standard output and standard error stream from the process that was invoked."
              | optional,
            toolConfigurationNotifications
              | js2n.array.MinItems 0
              | Array
                refs."properties.invocations.items.properties.toolExecutionNotifications.items"
              | doc "A list of conditions detected by the tool that are relevant to the tool's configuration."
              | optional,
            toolExecutionNotifications
              | js2n.array.MinItems 0
              | Array
                {
                  associatedRule
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the rule descriptor associated with this notification."
                    | optional,
                  descriptor
                    | refs."properties.results.items.properties.taxa.items"
                    | { _ | Dyn }
                    | doc "A reference used to locate the descriptor relevant to this notification."
                    | optional,
                  exception
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The runtime exception, if any, relevant to this notification."
                    | optional,
                  level
                    | std.enum.TagOrString
                    | [| 'error, 'warning, 'note, 'none |]
                    | doc "A value specifying the severity level of the notification."
                    | optional,
                  locations
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      refs."properties.results.items.properties.locations.items"
                    | doc "The locations relevant to this notification."
                    | optional,
                  message
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message that describes the condition that was encountered.",
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the notification."
                    | optional,
                  threadId
                    | std.number.Integer
                    | doc "The thread identifier of the code that generated the notification."
                    | optional,
                  timeUtc
                    | String
                    | doc "The Coordinated Universal Time (UTC) date and time at which the analysis tool generated the notification."
                    | optional,
                }
              | doc "A list of runtime conditions detected by the tool during the analysis."
              | optional,
            workingDirectory
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The working directory for the invocation."
              | optional,
          }
        | doc "Describes the invocation of the analysis tool that will be merged with an external run."
        | optional,
      logicalLocations
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            decoratedName
              | String
              | doc "The machine-readable name for the logical location, such as a mangled function name provided by a C++ compiler that encodes calling convention, return type and other details along with the function name."
              | optional,
            fullyQualifiedName
              | String
              | doc "The human-readable fully qualified name of the logical location."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the logical locations array."
              | optional,
            kind
              | String
              | doc "The type of construct this logical location component refers to. Should be one of 'function', 'member', 'module', 'namespace', 'parameter', 'resource', 'returnType', 'type', 'variable', 'object', 'array', 'property', 'value', 'element', 'text', 'attribute', 'comment', 'declaration', 'dtd' or 'processingInstruction', if any of those accurately describe the construct."
              | optional,
            name
              | String
              | doc "Identifies the construct in which the result occurred. For example, this property might contain the name of a class or a method."
              | optional,
            parentIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "Identifies the index of the immediate parent of the construct in which the result was detected. For example, this property might point to a logical location that represents the namespace that holds a type."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the logical location."
              | optional,
          }
        | doc "An array of logical locations such as namespaces, types or functions that will be merged with an external run."
        | optional,
      policies
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            associatedComponent
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The component which is strongly associated with this component. For a translation, this refers to the component which has been translated. For an extension, this is the driver that provides the extension's plugin model."
              | optional,
            contents
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'nonLocalizedData, 'localizedData |]
                  ]
              )
              | doc "The kinds of data contained in this object."
              | optional,
            dottedQuadFileVersion
              | js2n.string.Matches "[0-9]+(\\.[0-9]+){3}"
              | doc "The binary version of the tool component's primary executable file expressed as four non-negative integers separated by a period (for operating systems that express file versions in this way)."
              | optional,
            downloadUri
              | String
              | doc "The absolute URI from which the tool component can be downloaded."
              | optional,
            fullDescription
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A comprehensive description of the tool component."
              | optional,
            fullName
              | String
              | doc "The name of the tool component along with its version and any other useful identifying information, such as its locale."
              | optional,
            globalMessageStrings
              | {
                _ | {
                  markdown
                    | String
                    | doc "A Markdown message string or format string."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the message."
                    | optional,
                  text
                    | String
                    | doc "A plain text message string or format string.",
                }
              }
              | doc "A dictionary, each of whose keys is a resource identifier and each of whose values is a multiformatMessageString object, which holds message strings in plain text and (optionally) Markdown format. The strings can include placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
              | optional,
            guid
              | js2n.string.Matches
                "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
              | doc "A unique identifier for the tool component in the form of a GUID."
              | optional,
            informationUri
              | String
              | doc "The absolute URI at which information about this version of the tool component can be found."
              | optional,
            isComprehensive
              | Bool
              | doc "Specifies whether this object contains a complete definition of the localizable and/or non-localizable data for this component, as opposed to including only data that is relevant to the results persisted to this log file."
              | optional,
            language
              | js2n.string.Matches "^[a-zA-Z]{2}|^[a-zA-Z]{2}-[a-zA-Z]{2}?$"
              | doc "The language of the messages emitted into the log file during this run (expressed as an ISO 639-1 two-letter lowercase language code) and an optional region (expressed as an ISO 3166-1 two-letter uppercase subculture code associated with a country or region). The casing is recommended but not required (in order for this data to conform to RFC5646)."
              | optional,
            localizedDataSemanticVersion
              | String
              | doc "The semantic version of the localized strings defined in this component; maintained by components that provide translations."
              | optional,
            locations
              | js2n.array.MinItems 0
              | Array
                {
                  description
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A short description of the artifact location."
                    | optional,
                  index
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "The index within the run artifacts array of the artifact object associated with the artifact location."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the artifact location."
                    | optional,
                  uri
                    | String
                    | doc "A string containing a valid relative or absolute URI."
                    | optional,
                  uriBaseId
                    | String
                    | doc "A string which indirectly specifies the absolute URI with respect to which a relative URI in the \"uri\" property is interpreted."
                    | optional,
                }
              | doc "An array of the artifactLocation objects associated with the tool component."
              | optional,
            minimumRequiredLocalizedDataSemanticVersion
              | String
              | doc "The minimum value of localizedDataSemanticVersion required in translations consumed by this component; used by components that consume translations."
              | optional,
            name | String | doc "The name of the tool component.",
            notifications
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "An array of reportingDescriptor objects relevant to the notifications related to the configuration and runtime execution of the tool component."
              | optional,
            organization
              | String
              | doc "The organization or company that produced the tool component."
              | optional,
            product
              | String
              | doc "A product suite to which the tool component belongs."
              | optional,
            productSuite
              | String
              | doc "A localizable string containing the name of the suite of products to which the tool component belongs."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the tool component."
              | optional,
            releaseDateUtc
              | String
              | doc "A string specifying the UTC date (and optionally, the time) of the component's release."
              | optional,
            rules
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "An array of reportingDescriptor objects relevant to the analysis performed by the tool component."
              | optional,
            semanticVersion
              | String
              | doc "The tool component version in the format specified by Semantic Versioning 2.0."
              | optional,
            shortDescription
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "A brief description of the tool component."
              | optional,
            supportedTaxonomies
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  guid
                    | js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    | doc "The 'guid' property of the referenced toolComponent."
                    | optional,
                  index
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "An index into the referenced toolComponent in tool.extensions."
                    | optional,
                  name
                    | String
                    | doc "The 'name' property of the referenced toolComponent."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the toolComponentReference."
                    | optional,
                }
              | doc "An array of toolComponentReference objects to declare the taxonomies supported by the tool component."
              | optional,
            taxa
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  defaultConfiguration
                    | {
                      enabled
                        | Bool
                        | doc "Specifies whether the report may be produced during the scan."
                        | optional,
                      level
                        | std.enum.TagOrString
                        | [| 'error, 'warning, 'note, 'none |]
                        | doc "Specifies the failure level for the report."
                        | optional,
                      parameters
                        | refs."properties.properties"
                        | doc "Contains configuration information specific to a report."
                        | optional,
                      properties
                        | refs."properties.properties"
                        | doc "Key/value pairs that provide additional information about the reporting configuration."
                        | optional,
                      rank
                        | js2n.number.Maximum 100
                        | js2n.number.Minimum (-1)
                        | doc "Specifies the relative priority of the report. Used for analysis output only."
                        | optional,
                    }
                    | doc "Default reporting configuration information."
                    | optional,
                  deprecatedGuids
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array (
                      js2n.string.Matches
                        "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    )
                    | doc "An array of unique identifies in the form of a GUID by which this report was known in some previous version of the analysis tool."
                    | optional,
                  deprecatedIds
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "An array of stable, opaque identifiers by which this report was known in some previous version of the analysis tool."
                    | optional,
                  deprecatedNames
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "An array of readable identifiers by which this report was known in some previous version of the analysis tool."
                    | optional,
                  fullDescription
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "A description of the report. Should, as far as possible, provide details sufficient to enable resolution of any problem indicated by the result."
                    | optional,
                  guid
                    | js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    | doc "A unique identifier for the reporting descriptor in the form of a GUID."
                    | optional,
                  help
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "Provides the primary documentation for the report, useful when there is no online documentation."
                    | optional,
                  helpUri
                    | String
                    | doc "A URI where the primary documentation for the report can be found."
                    | optional,
                  id
                    | String
                    | doc "A stable, opaque identifier for the report.",
                  messageStrings
                    | {
                      _ | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    }
                    | doc "A set of name/value pairs with arbitrary names. Each value is a multiformatMessageString object, which holds message strings in plain text and (optionally) Markdown format. The strings can include placeholders, which can be used to construct a message in combination with an arbitrary number of additional string arguments."
                    | optional,
                  name
                    | String
                    | doc "A report identifier that is understandable to an end user."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the report."
                    | optional,
                  relationships
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      {
                        description
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A description of the reporting descriptor relationship."
                          | optional,
                        kinds
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "A set of distinct strings that categorize the relationship. Well-known kinds include 'canPrecede', 'canFollow', 'willPrecede', 'willFollow', 'superset', 'subset', 'equal', 'disjoint', 'relevant', and 'incomparable'."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the reporting descriptor reference."
                          | optional,
                        target
                          | refs."properties.results.items.properties.taxa.items"
                          | { _ | Dyn }
                          | doc "A reference to the related reporting descriptor.",
                      }
                    | doc "An array of objects that describe relationships between this reporting descriptor and others."
                    | optional,
                  shortDescription
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "A concise description of the report. Should be a single sentence that is understandable when visible space is limited to a single line of text."
                    | optional,
                }
              | doc "An array of reportingDescriptor objects relevant to the definitions of both standalone and tool-defined taxonomies."
              | optional,
            translationMetadata
              | {
                downloadUri
                  | String
                  | doc "The absolute URI from which the translation metadata can be downloaded."
                  | optional,
                fullDescription
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "A comprehensive description of the translation metadata."
                  | optional,
                fullName
                  | String
                  | doc "The full name associated with the translation metadata."
                  | optional,
                informationUri
                  | String
                  | doc "The absolute URI from which information related to the translation metadata can be downloaded."
                  | optional,
                name
                  | String
                  | doc "The name associated with the translation metadata.",
                properties
                  | refs."properties.properties"
                  | doc "Key/value pairs that provide additional information about the translation metadata."
                  | optional,
                shortDescription
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "A brief description of the translation metadata."
                  | optional,
              }
              | doc "Translation metadata, required for a translation, not populated by other component types."
              | optional,
            version
              | String
              | doc "The tool component version, in whatever format the component natively provides."
              | optional,
          }
        | doc "Tool policies that will be merged with an external run."
        | optional,
      properties
        | {
          tags
            | js2n.array.MinItems 0
            | js2n.array.UniqueItems
            | Array String
            | doc "A set of distinct strings that provide additional information."
            | optional,
          ..
        }
        | doc "Key/value pairs that provide additional information about the external properties."
        | optional,
      results
        | js2n.array.MinItems 0
        | Array
          {
            analysisTarget
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "Identifies the artifact that the analysis tool was instructed to scan. This need not be the same as the artifact where the result actually occurred."
              | optional,
            attachments
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  artifactLocation
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The location of the attachment.",
                  description
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message describing the role played by the attachment."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the attachment."
                    | optional,
                  rectangles
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
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
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A message relevant to the rectangle."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the rectangle."
                          | optional,
                        right
                          | Number
                          | doc "The X coordinate of the right edge of the rectangle, measured in the image's natural units."
                          | optional,
                        top
                          | Number
                          | doc "The Y coordinate of the top edge of the rectangle, measured in the image's natural units."
                          | optional,
                      }
                    | doc "An array of rectangles specifying areas of interest within the image."
                    | optional,
                  regions
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | doc "An array of regions of interest within the attachment."
                    | optional,
                }
              | doc "A set of artifacts relevant to the result."
              | optional,
            baselineState
              | std.enum.TagOrString
              | [| 'absent, 'updated, 'unchanged, 'new |]
              | doc "The state of a result relative to a baseline of a previous run."
              | optional,
            codeFlows
              | js2n.array.MinItems 0
              | Array
                {
                  message
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message relevant to the code flow."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the code flow."
                    | optional,
                  threadFlows
                    | js2n.array.MinItems 1
                    | Array
                      {
                        id
                          | String
                          | doc "An string that uniquely identifies the threadFlow within the codeFlow in which it occurs."
                          | optional,
                        immutableState
                          | {
                            _ | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                          }
                          | doc "Values of relevant expressions at the start of the thread flow that remain constant."
                          | optional,
                        initialState
                          | {
                            _ | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                          }
                          | doc "Values of relevant expressions at the start of the thread flow that may change during thread flow execution."
                          | optional,
                        locations
                          | js2n.array.MinItems 1
                          | Array refs."properties.threadFlowLocations.items"
                          | doc "A temporally ordered array of 'threadFlowLocation' objects, each of which describes a location visited by the tool while producing the result.",
                        message
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A message relevant to the thread flow."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the thread flow."
                          | optional,
                      }
                    | doc "An array of one or more unique threadFlow objects, each of which describes the progress of a program through a thread of execution.",
                }
              | doc "An array of 'codeFlow' objects relevant to the result."
              | optional,
            correlationGuid
              | js2n.string.Matches
                "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
              | doc "A stable, unique identifier for the equivalence class of logically identical results to which this result belongs, in the form of a GUID."
              | optional,
            fingerprints
              | { _ | String }
              | doc "A set of strings each of which individually defines a stable, unique identity for the result."
              | optional,
            fixes
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  artifactChanges
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array
                      {
                        artifactLocation
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | doc "The location of the artifact to change.",
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the change."
                          | optional,
                        replacements
                          | js2n.array.MinItems 1
                          | Array
                            {
                              deletedRegion
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | doc "The region of the artifact to delete.",
                              insertedContent
                                | refs."properties.webRequests.items.properties.body"
                                | doc "The content to insert at the location specified by the 'deletedRegion' property."
                                | optional,
                              properties
                                | refs."properties.properties"
                                | doc "Key/value pairs that provide additional information about the replacement."
                                | optional,
                            }
                          | doc "An array of replacement objects, each of which represents the replacement of a single region in a single artifact specified by 'artifactLocation'.",
                      }
                    | doc "One or more artifact changes that comprise a fix for a result.",
                  description
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message that describes the proposed fix, enabling viewers to present the proposed change to an end user."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the fix."
                    | optional,
                }
              | doc "An array of 'fix' objects, each of which represents a proposed fix to the problem indicated by the result."
              | optional,
            graphTraversals
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "runGraphIndex" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "resultGraphIndex" ],
                            Array Dyn
                          ]
                      ],
                    {
                      description
                        | refs."properties.results.items.properties.message"
                        | { _ | Dyn }
                        | doc "A description of this graph traversal."
                        | optional,
                      edgeTraversals
                        | js2n.array.MinItems 0
                        | Array
                          {
                            edgeId
                              | String
                              | doc "Identifies the edge being traversed.",
                            finalState
                              | {
                                _ | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                              }
                              | doc "The values of relevant expressions after the edge has been traversed."
                              | optional,
                            message
                              | refs."properties.results.items.properties.message"
                              | { _ | Dyn }
                              | doc "A message to display to the user as the edge is traversed."
                              | optional,
                            properties
                              | refs."properties.properties"
                              | doc "Key/value pairs that provide additional information about the edge traversal."
                              | optional,
                            stepOverEdgeCount
                              | std.number.Integer
                              | js2n.number.Minimum 0
                              | doc "The number of edge traversals necessary to return from a nested graph."
                              | optional,
                          }
                        | doc "The sequences of edges traversed by this graph traversal."
                        | optional,
                      immutableState
                        | {
                          _ | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                        }
                        | doc "Values of relevant expressions at the start of the graph traversal that remain constant for the graph traversal."
                        | optional,
                      initialState
                        | {
                          _ | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                        }
                        | doc "Values of relevant expressions at the start of the graph traversal that may change during graph traversal."
                        | optional,
                      properties
                        | refs."properties.properties"
                        | doc "Key/value pairs that provide additional information about the graph traversal."
                        | optional,
                      resultGraphIndex
                        | std.number.Integer
                        | js2n.number.Minimum (-1)
                        | doc "The index within the result.graphs to be associated with the result."
                        | optional,
                      runGraphIndex
                        | std.number.Integer
                        | js2n.number.Minimum (-1)
                        | doc "The index within the run.graphs to be associated with the result."
                        | optional,
                    }
                  ]
              )
              | doc "An array of one or more unique 'graphTraversal' objects."
              | optional,
            graphs
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array refs."properties.graphs.items"
              | doc "An array of zero or more unique graph objects associated with the result."
              | optional,
            guid
              | js2n.string.Matches
                "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
              | doc "A stable, unique identifier for the result in the form of a GUID."
              | optional,
            hostedViewerUri
              | String
              | doc "An absolute URI at which the result can be viewed."
              | optional,
            kind
              | std.enum.TagOrString
              | [|
                'informational,
                'open,
                'review,
                'fail,
                'pass,
                'notApplicable
              |]
              | doc "A value that categorizes results by evaluation state."
              | optional,
            level
              | std.enum.TagOrString
              | [| 'error, 'warning, 'note, 'none |]
              | doc "A value specifying the severity level of the result."
              | optional,
            locations
              | js2n.array.MinItems 0
              | Array
                {
                  annotations
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      {
                        byteLength
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "The length of the region in bytes."
                          | optional,
                        byteOffset
                          | std.number.Integer
                          | js2n.number.Minimum (-1)
                          | doc "The zero-based offset from the beginning of the artifact of the first byte in the region."
                          | optional,
                        charLength
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "The length of the region in characters."
                          | optional,
                        charOffset
                          | std.number.Integer
                          | js2n.number.Minimum (-1)
                          | doc "The zero-based offset from the beginning of the artifact of the first character in the region."
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
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A message relevant to the region."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the region."
                          | optional,
                        snippet
                          | refs."properties.webRequests.items.properties.body"
                          | doc "The portion of the artifact contents within the specified region."
                          | optional,
                        sourceLanguage
                          | String
                          | doc "Specifies the source language, if any, of the portion of the artifact specified by the region object."
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
                      }
                    | doc "A set of regions relevant to the location."
                    | optional,
                  id
                    | std.number.Integer
                    | js2n.number.Minimum (-1)
                    | doc "Value that distinguishes this location from all other locations within a single result object."
                    | optional,
                  logicalLocations
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array refs."properties.logicalLocations.items"
                    | doc "The logical locations associated with the result."
                    | optional,
                  message
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message relevant to the location."
                    | optional,
                  physicalLocation
                    | refs."properties.results.items.properties.provenance.properties.conversionSources.items"
                    | { _ | Dyn }
                    | doc "Identifies the artifact and region."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the location."
                    | optional,
                  relationships
                    | js2n.array.MinItems 0
                    | js2n.array.UniqueItems
                    | Array
                      {
                        description
                          | refs."properties.results.items.properties.message"
                          | { _ | Dyn }
                          | doc "A description of the location relationship."
                          | optional,
                        kinds
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "A set of distinct strings that categorize the relationship. Well-known kinds include 'includes', 'isIncludedBy' and 'relevant'."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the location relationship."
                          | optional,
                        target
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "A reference to the related location.",
                      }
                    | doc "An array of objects that describe relationships between this location and others."
                    | optional,
                }
              | doc "The set of locations where the result was detected. Specify only one location unless the problem indicated by the result can only be corrected by making a change at every specified location."
              | optional,
            message
              | std.contract.any_of
                [
                  js2n.record.Required [ "text" ],
                  js2n.record.Required [ "id" ]
                ]
              | {
                arguments
                  | js2n.array.MinItems 0
                  | Array String
                  | doc "An array of strings to substitute into the message string."
                  | optional,
                id | String | doc "The identifier for this message." | optional,
                markdown | String | doc "A Markdown message string." | optional,
                properties
                  | refs."properties.properties"
                  | doc "Key/value pairs that provide additional information about the message."
                  | optional,
                text | String | doc "A plain text message string." | optional,
              }
              | doc "A message that describes the result. The first sentence of the message only will be displayed when visible space is limited.",
            occurrenceCount
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "A positive integer specifying the number of times this logically unique result was observed in this run."
              | optional,
            partialFingerprints
              | { _ | String }
              | doc "A set of strings that contribute to the stable, unique identity of the result."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the result."
              | optional,
            provenance
              | {
                conversionSources
                  | js2n.array.MinItems 0
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "address" ],
                            js2n.record.Required [ "artifactLocation" ]
                          ],
                        {
                          address
                            | refs."properties.addresses.items"
                            | doc "The address of the location."
                            | optional,
                          artifactLocation
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "The location of the artifact."
                            | optional,
                          contextRegion
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "Specifies a portion of the artifact that encloses the region. Allows a viewer to display additional context around the region."
                            | optional,
                          properties
                            | refs."properties.properties"
                            | doc "Key/value pairs that provide additional information about the physical location."
                            | optional,
                          region
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc "Specifies a portion of the artifact."
                            | optional,
                        }
                      ]
                  )
                  | doc "An array of physicalLocation objects which specify the portions of an analysis tool's output that a converter transformed into the result."
                  | optional,
                firstDetectionRunGuid
                  | js2n.string.Matches
                    "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                  | doc "A GUID-valued string equal to the automationDetails.guid property of the run in which the result was first detected."
                  | optional,
                firstDetectionTimeUtc
                  | String
                  | doc "The Coordinated Universal Time (UTC) date and time at which the result was first detected. See \"Date/time properties\" in the SARIF spec for the required format."
                  | optional,
                invocationIndex
                  | std.number.Integer
                  | js2n.number.Minimum (-1)
                  | doc "The index within the run.invocations array of the invocation object which describes the tool invocation that detected the result."
                  | optional,
                lastDetectionRunGuid
                  | js2n.string.Matches
                    "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                  | doc "A GUID-valued string equal to the automationDetails.guid property of the run in which the result was most recently detected."
                  | optional,
                lastDetectionTimeUtc
                  | String
                  | doc "The Coordinated Universal Time (UTC) date and time at which the result was most recently detected. See \"Date/time properties\" in the SARIF spec for the required format."
                  | optional,
                properties
                  | refs."properties.properties"
                  | doc "Key/value pairs that provide additional information about the result."
                  | optional,
              }
              | doc "Information about how and when the result was detected."
              | optional,
            rank
              | js2n.number.Maximum 100
              | js2n.number.Minimum (-1)
              | doc "A number representing the priority or importance of the result."
              | optional,
            relatedLocations
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array refs."properties.results.items.properties.locations.items"
              | doc "A set of locations relevant to this result."
              | optional,
            rule
              | refs."properties.results.items.properties.taxa.items"
              | { _ | Dyn }
              | doc "A reference used to locate the rule descriptor relevant to this result."
              | optional,
            ruleId
              | String
              | doc "The stable, unique identifier of the rule, if any, to which this result is relevant."
              | optional,
            ruleIndex
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the tool component rules array of the rule object associated with this result."
              | optional,
            stacks
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  frames
                    | js2n.array.MinItems 0
                    | Array
                      {
                        location
                          | refs."properties.results.items.properties.locations.items"
                          | doc "The location to which this stack frame refers."
                          | optional,
                        module
                          | String
                          | doc "The name of the module that contains the code of this stack frame."
                          | optional,
                        parameters
                          | js2n.array.MinItems 0
                          | Array String
                          | doc "The parameters of the call that is executing."
                          | optional,
                        properties
                          | refs."properties.properties"
                          | doc "Key/value pairs that provide additional information about the stack frame."
                          | optional,
                        threadId
                          | std.number.Integer
                          | doc "The thread identifier of the stack frame."
                          | optional,
                      }
                    | doc "An array of stack frames that represents a sequence of calls, rendered in reverse chronological order, that comprise the call stack.",
                  message
                    | refs."properties.results.items.properties.message"
                    | { _ | Dyn }
                    | doc "A message relevant to this call stack."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the stack."
                    | optional,
                }
              | doc "An array of 'stack' objects relevant to the result."
              | optional,
            suppressions
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array
                {
                  guid
                    | js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                    | doc "A stable, unique identifier for the suppression in the form of a GUID."
                    | optional,
                  justification
                    | String
                    | doc "A string representing the justification for the suppression."
                    | optional,
                  kind
                    | std.enum.TagOrString
                    | [| 'external, 'inSource |]
                    | doc "A string that indicates where the suppression is persisted.",
                  location
                    | refs."properties.results.items.properties.locations.items"
                    | doc "Identifies the location associated with the suppression."
                    | optional,
                  properties
                    | refs."properties.properties"
                    | doc "Key/value pairs that provide additional information about the suppression."
                    | optional,
                  status
                    | std.enum.TagOrString
                    | [| 'rejected, 'underReview, 'accepted |]
                    | doc "A string that indicates the review status of the suppression."
                    | optional,
                }
              | doc "A set of suppressions relevant to this result."
              | optional,
            taxa
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.contract.any_of
                      [
                        js2n.record.Required [ "index" ],
                        js2n.record.Required [ "guid" ],
                        js2n.record.Required [ "id" ]
                      ],
                    {
                      guid
                        | js2n.string.Matches
                          "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
                        | doc "A guid that uniquely identifies the descriptor."
                        | optional,
                      id | String | doc "The id of the descriptor." | optional,
                      index
                        | std.number.Integer
                        | js2n.number.Minimum (-1)
                        | doc "The index into an array of descriptors in toolComponent.ruleDescriptors, toolComponent.notificationDescriptors, or toolComponent.taxonomyDescriptors, depending on context."
                        | optional,
                      properties
                        | refs."properties.properties"
                        | doc "Key/value pairs that provide additional information about the reporting descriptor reference."
                        | optional,
                      toolComponent
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | doc "A reference used to locate the toolComponent associated with the descriptor."
                        | optional,
                    }
                  ]
              )
              | doc "An array of references to taxonomy reporting descriptors that are applicable to the result."
              | optional,
            webRequest
              | refs."properties.webRequests.items"
              | doc "A web request associated with this result."
              | optional,
            webResponse
              | refs."properties.webResponses.items"
              | doc "A web response associated with this result."
              | optional,
            workItemUris
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array String
              | doc "The URIs of the work items associated with this result."
              | optional,
          }
        | doc "An array of result objects that will be merged with an external run."
        | optional,
      runGuid
        | js2n.string.Matches
          "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"
        | doc "A stable, unique identifier for the run associated with this external properties object, in the form of a GUID."
        | optional,
      taxonomies
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array refs."properties.policies.items"
        | doc "Tool taxonomies that will be merged with an external run."
        | optional,
      threadFlowLocations
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            executionOrder
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "An integer representing the temporal order in which execution reached this location."
              | optional,
            executionTimeUtc
              | String
              | doc "The Coordinated Universal Time (UTC) date and time at which this location was executed."
              | optional,
            importance
              | std.enum.TagOrString
              | [| 'unimportant, 'essential, 'important |]
              | doc "Specifies the importance of this location in understanding the code flow in which it occurs. The order from most to least important is \"essential\", \"important\", \"unimportant\". Default: \"important\"."
              | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run threadFlowLocations array."
              | optional,
            kinds
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array String
              | doc "A set of distinct strings that categorize the thread flow location. Well-known kinds include 'acquire', 'release', 'enter', 'exit', 'call', 'return', 'branch', 'implicit', 'false', 'true', 'caution', 'danger', 'unknown', 'unreachable', 'taint', 'function', 'handler', 'lock', 'memory', 'resource', 'scope' and 'value'."
              | optional,
            location
              | refs."properties.results.items.properties.locations.items"
              | doc "The code location."
              | optional,
            module
              | String
              | doc "The name of the module that contains the code that is executing."
              | optional,
            nestingLevel
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "An integer representing a containment hierarchy within the thread flow."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the threadflow location."
              | optional,
            stack
              | refs."properties.results.items.properties.stacks.items"
              | doc "The call stack leading to this location."
              | optional,
            state
              | {
                _ | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "A dictionary, each of whose keys specifies a variable or expression, the associated value of which represents the variable or expression value. For an annotation of kind 'continuation', for example, this dictionary might hold the current assumed values of a set of global variables."
              | optional,
            taxa
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.results.items.properties.taxa.items",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of references to rule or taxonomy reporting descriptors that are applicable to the thread flow location."
              | optional,
            webRequest
              | refs."properties.webRequests.items"
              | doc "A web request associated with this thread flow location."
              | optional,
            webResponse
              | refs."properties.webResponses.items"
              | doc "A web response associated with this thread flow location."
              | optional,
          }
        | doc "An array of threadFlowLocation objects that will be merged with an external run."
        | optional,
      translations
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array refs."properties.policies.items"
        | doc "Tool translations that will be merged with an external run."
        | optional,
      version
        | std.enum.TagOrString
        | [| '"2.1.0" |]
        | doc "The SARIF format version of this external properties object.",
      webRequests
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            body
              | {
                binary
                  | String
                  | doc "MIME Base64-encoded content from a binary artifact, or from a text artifact in its original encoding."
                  | optional,
                properties
                  | refs."properties.properties"
                  | doc "Key/value pairs that provide additional information about the artifact content."
                  | optional,
                rendered
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "An alternate rendered representation of the artifact (e.g., a decompiled representation of a binary region)."
                  | optional,
                text
                  | String
                  | doc "UTF-8-encoded content from a text artifact."
                  | optional,
              }
              | doc "The body of the request."
              | optional,
            headers | { _ | String } | doc "The request headers." | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run.webRequests array of the request object associated with this result."
              | optional,
            method
              | String
              | doc "The HTTP method. Well-known values are 'GET', 'PUT', 'POST', 'DELETE', 'PATCH', 'HEAD', 'OPTIONS', 'TRACE', 'CONNECT'."
              | optional,
            parameters
              | { _ | String }
              | doc "The request parameters."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the request."
              | optional,
            protocol
              | String
              | doc "The request protocol. Example: 'http'."
              | optional,
            target | String | doc "The target of the request." | optional,
            version
              | String
              | doc "The request version. Example: '1.1'."
              | optional,
          }
        | doc "Requests that will be merged with an external run."
        | optional,
      webResponses
        | js2n.array.MinItems 0
        | js2n.array.UniqueItems
        | Array
          {
            body
              | refs."properties.webRequests.items.properties.body"
              | doc "The body of the response."
              | optional,
            headers | { _ | String } | doc "The response headers." | optional,
            index
              | std.number.Integer
              | js2n.number.Minimum (-1)
              | doc "The index within the run.webResponses array of the response object associated with this result."
              | optional,
            noResponseReceived
              | Bool
              | doc "Specifies whether a response was received from the server."
              | optional,
            properties
              | refs."properties.properties"
              | doc "Key/value pairs that provide additional information about the response."
              | optional,
            protocol
              | String
              | doc "The response protocol. Example: 'http'."
              | optional,
            reasonPhrase
              | String
              | doc "The response reason. Example: 'Not found'."
              | optional,
            statusCode
              | std.number.Integer
              | doc "The response status code. Example: 451."
              | optional,
            version
              | String
              | doc "The response version. Example: '1.1'."
              | optional,
          }
        | doc "Responses that will be merged with an external run."
        | optional,
    }