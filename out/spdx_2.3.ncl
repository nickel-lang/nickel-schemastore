# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      SPDXID
        | String
        | doc "Uniquely identify any element in an SPDX document which may be referenced by other elements.",
      annotations
        | Array
          {
            annotationDate
              | String
              | doc "Identify when the comment was made. This is to be specified according to the combined date and time in the UTC format, as specified in the ISO 8601 standard.",
            annotationType
              | std.enum.TagOrString
              | [| 'REVIEW, 'OTHER |]
              | doc "Type of the annotation.",
            annotator
              | String
              | doc "This field identifies the person, organization, or tool that has commented on a file, package, snippet, or the entire document.",
            comment | String,
          }
        | doc "Provide additional information about an SpdxElement."
        | optional,
      comment | String | optional,
      creationInfo
        | {
          comment | String | optional,
          created
            | String
            | doc "Identify when the SPDX document was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard.",
          creators
            | js2n.array.MinItems 1
            | Array String
            | doc "Identify who (or what, in the case of a tool) created the SPDX document. If the SPDX document was created by an individual, indicate the person's name. If the SPDX document was created on behalf of a company or organization, indicate the entity name. If the SPDX document was created using a software tool, indicate the name and version for that tool. If multiple participants or tools were involved, use multiple instances of this field. Person name or organization name may be designated as “anonymous” if appropriate.",
          licenseListVersion
            | String
            | doc "An optional field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created."
            | optional,
        }
        | doc "One instance is required for each SPDX file produced. It provides the necessary information for forward and backward compatibility for processing tools.",
      dataLicense
        | String
        | doc "License expression for dataLicense. See SPDX Annex D for the license expression syntax.  Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields (\"SPDX-Metadata\"). The SPDX specification contains numerous fields where an SPDX document creator may provide relevant explanatory text in SPDX-Metadata. Without opining on the lawfulness of \"database rights\" (in jurisdictions where applicable), such explanatory text is copyrightable subject matter in most Berne Convention countries. By using the SPDX specification, or any portion hereof, you hereby agree that any copyright rights (as determined by your jurisdiction) in any SPDX-Metadata, including without limitation explanatory text, shall be subject to the terms of the Creative Commons CC0 1.0 Universal license. For SPDX-Metadata not containing any copyright rights, you hereby agree and acknowledge that the SPDX-Metadata is provided to you \"as-is\" and without any representations or warranties of any kind concerning the SPDX-Metadata, express, implied, statutory or otherwise, including without limitation warranties of title, merchantability, fitness for a particular purpose, non-infringement, or the absence of latent or other defects, accuracy, or the presence or absence of errors, whether or not discoverable, all to the greatest extent permissible under applicable law.",
      documentDescribes
        | Array String
        | doc "Packages, files and/or Snippets described by this SPDX document"
        | optional,
      documentNamespace
        | String
        | doc "The URI provides an unambiguous mechanism for other SPDX documents to reference SPDX elements within this SPDX document."
        | optional,
      externalDocumentRefs
        | Array
          {
            checksum
              | {
                algorithm
                  | std.enum.TagOrString
                  | [|
                    'SHA224,
                    'MD5,
                    'MD6,
                    'SHA512,
                    'BLAKE2b-384,
                    'SHA3-256,
                    'MD4,
                    'ADLER32,
                    'MD2,
                    'SHA3-512,
                    'BLAKE2b-256,
                    'BLAKE2b-512,
                    'SHA384,
                    'SHA256,
                    'SHA3-384,
                    'BLAKE3,
                    'SHA1
                  |]
                  | doc "Identifies the algorithm used to produce the subject Checksum. Currently, SHA-1 is the only supported algorithm. It is anticipated that other algorithms will be supported at a later time.",
                checksumValue
                  | String
                  | doc "The checksumValue property provides a lower case hexidecimal encoded digest value produced using a specific algorithm.",
              }
              | doc "A Checksum is value that allows the contents of a file to be authenticated. Even small changes to the content of the file will change its checksum. This class allows the results of a variety of checksum and cryptographic message digest algorithms to be represented.",
            externalDocumentId
              | String
              | doc "externalDocumentId is a string containing letters, numbers, ., - and/or + which uniquely identifies an external document within this document.",
            spdxDocument
              | String
              | doc "SPDX ID for SpdxDocument.  A property containing an SPDX document.",
          }
        | doc "Identify any external SPDX documents referenced within this SPDX document."
        | optional,
      files
        | Array
          {
            SPDXID
              | String
              | doc "Uniquely identify any element in an SPDX document which may be referenced by other elements.",
            annotations
              | Array
                {
                  annotationDate
                    | String
                    | doc "Identify when the comment was made. This is to be specified according to the combined date and time in the UTC format, as specified in the ISO 8601 standard.",
                  annotationType
                    | std.enum.TagOrString
                    | [| 'REVIEW, 'OTHER |]
                    | doc "Type of the annotation.",
                  annotator
                    | String
                    | doc "This field identifies the person, organization, or tool that has commented on a file, package, snippet, or the entire document.",
                  comment | String,
                }
              | doc "Provide additional information about an SpdxElement."
              | optional,
            artifactOfs
              | Array ({ _ | Dyn })
              | doc "Indicates the project in which the SpdxElement originated. Tools must preserve doap:homepage and doap:name properties and the URI (if one is known) of doap:Project resources that are values of this property. All other properties of doap:Projects are not directly supported by SPDX and may be dropped when translating to or from some SPDX formats."
              | optional,
            attributionTexts
              | Array String
              | doc "This field provides a place for the SPDX data creator to record acknowledgements that may be required to be communicated in some contexts. This is not meant to include the actual complete license text (see licenseConculded and licenseDeclared), and may or may not include copyright notices (see also copyrightText). The SPDX data creator may use this field to record other acknowledgements, such as particular clauses from license texts, which may be necessary or desirable to reproduce."
              | optional,
            checksums
              | js2n.array.MinItems 1
              | Array
                {
                  algorithm
                    | std.enum.TagOrString
                    | [|
                      'SHA224,
                      'MD5,
                      'MD6,
                      'SHA512,
                      'BLAKE2b-384,
                      'SHA3-256,
                      'MD4,
                      'ADLER32,
                      'MD2,
                      'SHA3-512,
                      'BLAKE2b-256,
                      'BLAKE2b-512,
                      'SHA384,
                      'SHA256,
                      'SHA3-384,
                      'BLAKE3,
                      'SHA1
                    |]
                    | doc "Identifies the algorithm used to produce the subject Checksum. Currently, SHA-1 is the only supported algorithm. It is anticipated that other algorithms will be supported at a later time.",
                  checksumValue
                    | String
                    | doc "The checksumValue property provides a lower case hexidecimal encoded digest value produced using a specific algorithm.",
                }
              | doc "The checksum property provides a mechanism that can be used to verify that the contents of a File or Package have not changed.",
            comment | String | optional,
            copyrightText
              | String
              | doc m%"
                The text of copyright declarations recited in the package, file or snippet.
                
                If the copyrightText field is not present, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            fileContributors
              | Array String
              | doc "This field provides a place for the SPDX file creator to record file contributors. Contributors could include names of copyright holders and/or authors who may not be copyright holders yet contributed to the file content."
              | optional,
            fileDependencies
              | Array String
              | doc "This field is deprecated since SPDX 2.0 in favor of using Section 7 which provides more granularity about relationships."
              | optional,
            fileName
              | String
              | doc "The name of the file relative to the root of the package.",
            fileTypes
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'AUDIO,
                      'TEXT,
                      'BINARY,
                      'SOURCE,
                      'APPLICATION,
                      'SPDX,
                      'ARCHIVE,
                      'VIDEO,
                      'IMAGE,
                      'DOCUMENTATION,
                      'OTHER
                    |]
                  ]
              )
              | doc "The type of the file."
              | optional,
            licenseComments
              | String
              | doc "The licenseComments property allows the preparer of the SPDX document to describe why the licensing in spdx:licenseConcluded was chosen."
              | optional,
            licenseConcluded
              | String
              | doc m%"
                License expression for licenseConcluded. See SPDX Annex D for the license expression syntax.  The licensing that the preparer of this SPDX document has concluded, based on the evidence, actually applies to the SPDX Item.
                
                If the licenseConcluded field is not present for an SPDX Item, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            licenseInfoInFiles
              | Array String
              | doc m%"
                Licensing information that was discovered directly in the subject file. This is also considered a declared license for the file.
                
                If the licenseInfoInFile field is not present for a file, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            noticeText
              | String
              | doc "This field provides a place for the SPDX file creator to record potential legal notices found in the file. This may or may not include copyright statements."
              | optional,
          }
        | doc "Files referenced in the SPDX document"
        | optional,
      hasExtractedLicensingInfos
        | Array
          {
            comment | String | optional,
            crossRefs
              | Array
                {
                  isLive
                    | Bool
                    | doc "Indicate a URL is still a live accessible location on the public internet"
                    | optional,
                  isValid
                    | Bool
                    | doc "True if the URL is a valid well formed URL"
                    | optional,
                  isWayBackLink
                    | Bool
                    | doc "True if the License SeeAlso URL points to a Wayback archive"
                    | optional,
                  "match"
                    | String
                    | doc "Status of a License List SeeAlso URL reference if it refers to a website that matches the license text."
                    | optional,
                  order
                    | std.number.Integer
                    | doc "The ordinal order of this element within a list"
                    | optional,
                  timestamp | String | doc "Timestamp" | optional,
                  url | String | doc "URL Reference",
                }
              | doc "Cross Reference Detail for a license SeeAlso URL"
              | optional,
            extractedText
              | String
              | doc "Provide a copy of the actual text of the license reference extracted from the package, file or snippet that is associated with the License Identifier to aid in future analysis.",
            licenseId
              | String
              | doc "A human readable short form license identifier for a license. The license ID is either on the standard license list or the form \"LicenseRef-[idString]\" where [idString] is a unique string containing letters, numbers, \".\" or \"-\".  When used within a license expression, the license ID can optionally include a reference to an external document in the form \"DocumentRef-[docrefIdString]:LicenseRef-[idString]\" where docRefIdString is an ID for an external document reference.",
            name | String | doc "Identify name of this SpdxElement." | optional,
            seeAlsos | Array String | optional,
          }
        | doc "Indicates that a particular ExtractedLicensingInfo was defined in the subject SpdxDocument."
        | optional,
      name | String | doc "Identify name of this SpdxElement.",
      packages
        | Array
          {
            SPDXID
              | String
              | doc "Uniquely identify any element in an SPDX document which may be referenced by other elements.",
            annotations
              | Array
                {
                  annotationDate
                    | String
                    | doc "Identify when the comment was made. This is to be specified according to the combined date and time in the UTC format, as specified in the ISO 8601 standard.",
                  annotationType
                    | std.enum.TagOrString
                    | [| 'REVIEW, 'OTHER |]
                    | doc "Type of the annotation.",
                  annotator
                    | String
                    | doc "This field identifies the person, organization, or tool that has commented on a file, package, snippet, or the entire document.",
                  comment | String,
                }
              | doc "Provide additional information about an SpdxElement."
              | optional,
            attributionTexts
              | Array String
              | doc "This field provides a place for the SPDX data creator to record acknowledgements that may be required to be communicated in some contexts. This is not meant to include the actual complete license text (see licenseConculded and licenseDeclared), and may or may not include copyright notices (see also copyrightText). The SPDX data creator may use this field to record other acknowledgements, such as particular clauses from license texts, which may be necessary or desirable to reproduce."
              | optional,
            builtDate
              | String
              | doc "This field provides a place for recording the actual date the package was built."
              | optional,
            checksums
              | Array
                {
                  algorithm
                    | std.enum.TagOrString
                    | [|
                      'SHA224,
                      'MD5,
                      'MD6,
                      'SHA512,
                      'BLAKE2b-384,
                      'SHA3-256,
                      'MD4,
                      'ADLER32,
                      'MD2,
                      'SHA3-512,
                      'BLAKE2b-256,
                      'BLAKE2b-512,
                      'SHA384,
                      'SHA256,
                      'SHA3-384,
                      'BLAKE3,
                      'SHA1
                    |]
                    | doc "Identifies the algorithm used to produce the subject Checksum. Currently, SHA-1 is the only supported algorithm. It is anticipated that other algorithms will be supported at a later time.",
                  checksumValue
                    | String
                    | doc "The checksumValue property provides a lower case hexidecimal encoded digest value produced using a specific algorithm.",
                }
              | doc "The checksum property provides a mechanism that can be used to verify that the contents of a File or Package have not changed."
              | optional,
            comment | String | optional,
            copyrightText
              | String
              | doc m%"
                The text of copyright declarations recited in the package, file or snippet.
                
                If the copyrightText field is not present, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            description
              | String
              | doc "Provides a detailed description of the package."
              | optional,
            downloadLocation
              | String
              | doc "The URI at which this package is available for download. Private (i.e., not publicly reachable) URIs are acceptable as values of this property. The values http://spdx.org/rdf/terms#none and http://spdx.org/rdf/terms#noassertion may be used to specify that the package is not downloadable or that no attempt was made to determine its download location, respectively.",
            externalRefs
              | Array
                {
                  comment | String | optional,
                  referenceCategory
                    | std.enum.TagOrString
                    | [| 'PACKAGE-MANAGER, 'SECURITY, 'PERSISTENT-ID, 'OTHER |]
                    | doc "Category for the external reference",
                  referenceLocator
                    | String
                    | doc "The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location. The format of the locator is subject to constraints defined by the <type>.",
                  referenceType
                    | String
                    | doc "Type of the external reference. These are definined in an appendix in the SPDX specification.",
                }
              | doc "An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package."
              | optional,
            filesAnalyzed
              | Bool
              | doc "Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document. If false indicates packages that represent metadata or URI references to a project, product, artifact, distribution or a component. If set to false, the package must not contain any files."
              | optional,
            hasFiles
              | Array String
              | doc "Indicates that a particular file belongs to a package."
              | optional,
            homepage | String | optional,
            licenseComments
              | String
              | doc "The licenseComments property allows the preparer of the SPDX document to describe why the licensing in spdx:licenseConcluded was chosen."
              | optional,
            licenseConcluded
              | String
              | doc m%"
                License expression for licenseConcluded. See SPDX Annex D for the license expression syntax.  The licensing that the preparer of this SPDX document has concluded, based on the evidence, actually applies to the SPDX Item.
                
                If the licenseConcluded field is not present for an SPDX Item, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            licenseDeclared
              | String
              | doc "License expression for licenseDeclared. See SPDX Annex D for the license expression syntax.  The licensing that the creators of the software in the package, or the packager, have declared. Declarations by the original software creator should be preferred, if they exist."
              | optional,
            licenseInfoFromFiles
              | Array String
              | doc m%"
                The licensing information that was discovered directly within the package. There will be an instance of this property for each distinct value of alllicenseInfoInFile properties of all files contained in the package.
                
                If the licenseInfoFromFiles field is not present for a package and filesAnalyzed property for that same pacakge is true or omitted, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            name | String | doc "Identify name of this SpdxElement.",
            originator
              | String
              | doc "The name and, optionally, contact information of the person or organization that originally created the package. Values of this property must conform to the agent and tool syntax."
              | optional,
            packageFileName
              | String
              | doc "The base name of the package file name. For example, zlib-1.2.5.tar.gz."
              | optional,
            packageVerificationCode
              | {
                packageVerificationCodeExcludedFiles
                  | Array String
                  | doc "A file that was excluded when calculating the package verification code. This is usually a file containing SPDX data regarding the package. If a package contains more than one SPDX file all SPDX files must be excluded from the package verification code. If this is not done it would be impossible to correctly calculate the verification codes in both files."
                  | optional,
                packageVerificationCodeValue
                  | String
                  | doc "The actual package verification code as a hex encoded value.",
              }
              | doc "A manifest based verification code (the algorithm is defined in section 4.7 of the full specification) of the SPDX Item. This allows consumers of this data and/or database to determine if an SPDX item they have in hand is identical to the SPDX item from which the data was produced. This algorithm works even if the SPDX document is included in the SPDX item."
              | optional,
            primaryPackagePurpose
              | std.enum.TagOrString
              | [|
                'FILE,
                'OPERATING_SYSTEM,
                'DEVICE,
                'SOURCE,
                'CONTAINER,
                'LIBRARY,
                'FRAMEWORK,
                'APPLICATION,
                'FIRMWARE,
                'ARCHIVE,
                'INSTALL,
                'OTHER
              |]
              | doc "This field provides information about the primary purpose of the identified package. Package Purpose is intrinsic to how the package is being used rather than the content of the package."
              | optional,
            releaseDate
              | String
              | doc "This field provides a place for recording the date the package was released."
              | optional,
            sourceInfo
              | String
              | doc "Allows the producer(s) of the SPDX document to describe how the package was acquired and/or changed from the original source."
              | optional,
            summary
              | String
              | doc "Provides a short description of the package."
              | optional,
            supplier
              | String
              | doc "The name and, optionally, contact information of the person or organization who was the immediate supplier of this package to the recipient. The supplier may be different than originator when the software has been repackaged. Values of this property must conform to the agent and tool syntax."
              | optional,
            validUntilDate
              | String
              | doc "This field provides a place for recording the end of the support period for a package from the supplier."
              | optional,
            versionInfo
              | String
              | doc "Provides an indication of the version of the package that is described by this SpdxDocument."
              | optional,
          }
        | doc "Packages referenced in the SPDX document"
        | optional,
      relationships
        | Array
          {
            comment | String | optional,
            relatedSpdxElement
              | String
              | doc "SPDX ID for SpdxElement.  A related SpdxElement.",
            relationshipType
              | std.enum.TagOrString
              | [|
                'EXAMPLE_OF,
                'DEV_TOOL_OF,
                'EXPANDED_FROM_ARCHIVE,
                'FILE_DELETED,
                'DESCENDANT_OF,
                'PACKAGE_OF,
                'TEST_CASE_OF,
                'BUILD_TOOL_OF,
                'OTHER,
                'STATIC_LINK,
                'GENERATED_FROM,
                'DOCUMENTATION_OF,
                'AMENDS,
                'DISTRIBUTION_ARTIFACT,
                'FILE_MODIFIED,
                'SPECIFICATION_FOR,
                'DEPENDS_ON,
                'TEST_TOOL_OF,
                'TEST_OF,
                'RUNTIME_DEPENDENCY_OF,
                'PATCH_APPLIED,
                'DEPENDENCY_MANIFEST_OF,
                'METAFILE_OF,
                'DESCRIBED_BY,
                'DYNAMIC_LINK,
                'PROVIDED_DEPENDENCY_OF,
                'HAS_PREREQUISITE,
                'PREREQUISITE_FOR,
                'DESCRIBES,
                'BUILD_DEPENDENCY_OF,
                'DEPENDENCY_OF,
                'DEV_DEPENDENCY_OF,
                'REQUIREMENT_DESCRIPTION_FOR,
                'FILE_ADDED,
                'OPTIONAL_DEPENDENCY_OF,
                'CONTAINS,
                'GENERATES,
                'ANCESTOR_OF,
                'OPTIONAL_COMPONENT_OF,
                'DATA_FILE_OF,
                'CONTAINED_BY,
                'TEST_DEPENDENCY_OF,
                'PATCH_FOR,
                'COPY_OF,
                'VARIANT_OF
              |]
              | doc "Describes the type of relationship between two SPDX elements.",
            spdxElementId
              | String
              | doc "Id to which the SPDX element is related",
          }
        | doc "Relationships referenced in the SPDX document"
        | optional,
      revieweds
        | Array
          {
            comment | String | optional,
            reviewDate
              | String
              | doc "The date and time at which the SpdxDocument was reviewed. This value must be in UTC and have 'Z' as its timezone indicator.",
            reviewer
              | String
              | doc "The name and, optionally, contact information of the person who performed the review. Values of this property must conform to the agent and tool syntax.  The reviewer property is deprecated in favor of Annotation with an annotationType review."
              | optional,
          }
        | doc "Reviewed"
        | optional,
      snippets
        | Array
          {
            SPDXID
              | String
              | doc "Uniquely identify any element in an SPDX document which may be referenced by other elements.",
            annotations
              | Array
                {
                  annotationDate
                    | String
                    | doc "Identify when the comment was made. This is to be specified according to the combined date and time in the UTC format, as specified in the ISO 8601 standard.",
                  annotationType
                    | std.enum.TagOrString
                    | [| 'REVIEW, 'OTHER |]
                    | doc "Type of the annotation.",
                  annotator
                    | String
                    | doc "This field identifies the person, organization, or tool that has commented on a file, package, snippet, or the entire document.",
                  comment | String,
                }
              | doc "Provide additional information about an SpdxElement."
              | optional,
            attributionTexts
              | Array String
              | doc "This field provides a place for the SPDX data creator to record acknowledgements that may be required to be communicated in some contexts. This is not meant to include the actual complete license text (see licenseConculded and licenseDeclared), and may or may not include copyright notices (see also copyrightText). The SPDX data creator may use this field to record other acknowledgements, such as particular clauses from license texts, which may be necessary or desirable to reproduce."
              | optional,
            comment | String | optional,
            copyrightText
              | String
              | doc m%"
                The text of copyright declarations recited in the package, file or snippet.
                
                If the copyrightText field is not present, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            licenseComments
              | String
              | doc "The licenseComments property allows the preparer of the SPDX document to describe why the licensing in spdx:licenseConcluded was chosen."
              | optional,
            licenseConcluded
              | String
              | doc m%"
                License expression for licenseConcluded. See SPDX Annex D for the license expression syntax.  The licensing that the preparer of this SPDX document has concluded, based on the evidence, actually applies to the SPDX Item.
                
                If the licenseConcluded field is not present for an SPDX Item, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            licenseInfoInSnippets
              | Array String
              | doc m%"
                Licensing information that was discovered directly in the subject snippet. This is also considered a declared license for the snippet.
                
                If the licenseInfoInSnippet field is not present for a snippet, it implies an equivalent meaning to NOASSERTION.
              "%
              | optional,
            name | String | doc "Identify name of this SpdxElement.",
            ranges
              | js2n.array.MinItems 1
              | Array
                {
                  endPointer
                    | {
                      lineNumber
                        | std.number.Integer
                        | doc "line number offset in the file"
                        | optional,
                      offset
                        | std.number.Integer
                        | doc "Byte offset in the file"
                        | optional,
                      reference | String | doc "SPDX ID for File",
                    },
                  startPointer
                    | {
                      lineNumber
                        | std.number.Integer
                        | doc "line number offset in the file"
                        | optional,
                      offset
                        | std.number.Integer
                        | doc "Byte offset in the file"
                        | optional,
                      reference | String | doc "SPDX ID for File",
                    },
                }
              | doc "This field defines the byte range in the original host file (in X.2) that the snippet information applies to",
            snippetFromFile
              | String
              | doc "SPDX ID for File.  File containing the SPDX element (e.g. the file contaning a snippet).",
          }
        | doc "Snippets referenced in the SPDX document"
        | optional,
      spdxVersion
        | String
        | doc "Provide a reference number that can be used to understand how to parse and interpret the rest of the file. It will enable both future changes to the specification and to support backward compatibility. The version number consists of a major and minor version indicator. The major field will be incremented when incompatible changes between versions are made (one or more sections are created, modified or deleted). The minor field will be incremented when backwards compatible changes are made.",
    }