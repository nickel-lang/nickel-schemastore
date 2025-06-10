# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dsb-AnyType" =
        {
            ID | String | optional,
            attRef
              | refs."definitions.dsb-AttachmentReferenceType"
              | { _ | Dyn }
              | optional,
            idRef | String | optional,
            mimeType | String | optional,
            val | String | optional,
            ..
          },
      "definitions.dsb-AttachmentReferenceType" =
        {
            attURI | String,
            di
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-DigestInfoType", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.dsb-Base64DataType" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 0,
              {
                ID | String | optional,
                attRef
                  | refs."definitions.dsb-AttachmentReferenceType"
                  | { _ | Dyn }
                  | optional,
                idRef | String | optional,
                mimeType | String | optional,
                val | String | optional,
                ..
              }
            ],
      "definitions.dsb-DigestInfoType" = { alg | String, val | String, .. },
      "definitions.dsb-InternationalStringType" =
        { lang | String, value | String | optional, .. },
      "definitions.dsb-NsPrefixMappingType" =
        { pre | String, uri | String, .. },
      "definitions.dsb-ResponseBaseType" =
        {
            profile | Array String | optional,
            reqID | String | optional,
            respID | String | optional,
            result | refs."definitions.dsb-ResultType" | { _ | Dyn },
            ..
          },
      "definitions.dsb-ResultType" =
        {
            maj
              | std.enum.TagOrString
              | [|
                '"urn:oasis:names:tc:dss:1.0:profiles:asynchronousprocessing:resultmajor:Pending",
                '"urn:oasis:names:tc:dss:1.0:resultmajor:InsufficientInformation",
                '"urn:oasis:names:tc:dss:1.0:resultmajor:ResponderError",
                '"urn:oasis:names:tc:dss:1.0:resultmajor:RequesterError",
                '"urn:oasis:names:tc:dss:1.0:resultmajor:Success"
              |],
            min | String | optional,
            msg
              | refs."definitions.dsb-InternationalStringType"
              | { _ | Dyn }
              | optional,
            pRef | String | optional,
            ..
          },
      "definitions.dsigrw-TransformType" =
        {
            alg | String,
            b64Content | String | optional,
            nsDecl
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-NsPrefixMappingType", { _ | Dyn } ]
              )
              | optional,
            val | String | optional,
            xPath | Array String | optional,
            xpath | Array String | optional,
            ..
          },
      "definitions.dsigrw-TransformsType" =
        {
            transform
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsigrw-TransformType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-AdditionalKeyInfoType" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                cert
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                crl
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                name | String | optional,
                ocsp
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                ocspresponse
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                poe
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                ski | String | optional,
                sub | String | optional,
                x509Digest
                  | refs."definitions.dss2-X509DigestType"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.dss2-AdditionalTimeInfoType" =
        {
            ref | String | optional,
            type | String,
            value | std.number.Integer | optional,
            ..
          },
      "definitions.dss2-AugmentSignatureInstructionType" =
        { type | String | optional, .. },
      "definitions.dss2-AugmentedSignatureType" =
        {
            sigObj | refs."definitions.dss2-SignatureObjectType" | { _ | Dyn },
            type | String | optional,
            ..
          },
      "definitions.dss2-ClaimedIdentityType" =
        {
            name | refs."definitions.saml2rw-NameIDType" | { _ | Dyn },
            suppInfo | refs."definitions.dsb-AnyType" | { _ | Dyn } | optional,
            ..
          },
      "definitions.dss2-DetailType" =
        {
            b64Content | String | optional,
            code | String | optional,
            msg
              | refs."definitions.dsb-InternationalStringType"
              | { _ | Dyn }
              | optional,
            type | String,
            ..
          },
      "definitions.dss2-DocumentBaseType" =
        {
            ID | String | optional,
            refType | String | optional,
            refURI | String | optional,
            schemaRefs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentType", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.dss2-DocumentHashType" =
        {
            ID | String | optional,
            dis
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-DigestInfoType", { _ | Dyn } ]
              ),
            refType | String | optional,
            refURI | String | optional,
            schemaRefs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentType", { _ | Dyn } ]
              )
              | optional,
            transforms
              | refs."definitions.dsigrw-TransformsType"
              | { _ | Dyn }
              | optional,
            whichRef | std.number.Integer | optional,
            ..
          },
      "definitions.dss2-DocumentType" =
        {
            ID | String | optional,
            b64Data | refs."definitions.dsb-Base64DataType" | { _ | Dyn },
            refType | String | optional,
            refURI | String | optional,
            schemaRefs
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            ..
          },
      "definitions.dss2-DocumentWithSignatureType" =
        { "doc" | refs."definitions.dss2-DocumentType" | { _ | Dyn }, .. },
      "definitions.dss2-IncludeObjectType" =
        {
            createRef | Bool | optional,
            hasObjectTagsAndAttributesSet | Bool | optional,
            objId | String | optional,
            whichDoc
              | refs."definitions.dss2-DocumentBaseType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-InputDocumentsType" =
        {
            "doc"
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentType", { _ | Dyn } ]
              )
              | optional,
            docHash
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentHashType", { _ | Dyn } ]
              )
              | optional,
            transformed
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-TransformedDataType", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.dss2-IntendedAudienceType" =
        {
            recipient
              | Array (
                std.contract.Sequence
                  [ refs."definitions.saml2rw-NameIDType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-KeySelectorType" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                cert | String | optional,
                name | String | optional,
                ski | String | optional,
                sub | String | optional,
                x509Digest
                  | refs."definitions.dss2-X509DigestType"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.dss2-ManifestResultType" =
        {
            nsDecl
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-NsPrefixMappingType", { _ | Dyn } ]
              )
              | optional,
            status
              | std.enum.TagOrString
              | [|
                '"urn:oasis:names:tc:dss:1.0:manifeststatus:Invalid",
                '"urn:oasis:names:tc:dss:1.0:manifeststatus:Valid"
              |],
            xPath | String,
            ..
          },
      "definitions.dss2-OptionalInputsSignType" =
        {
            addTimestamp
              | refs."definitions.dss2-AugmentSignatureInstructionType"
              | { _ | Dyn }
              | optional,
            aud
              | refs."definitions.dss2-IntendedAudienceType"
              | { _ | Dyn }
              | optional,
            claimedIdentity
              | refs."definitions.dss2-ClaimedIdentityType"
              | { _ | Dyn }
              | optional,
            incContent | Bool | optional,
            incObj
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-IncludeObjectType", { _ | Dyn } ]
              )
              | optional,
            keySel
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-KeySelectorType", { _ | Dyn } ]
              )
              | optional,
            lang | String | optional,
            nonce | std.number.Integer | optional,
            other
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-AnyType", { _ | Dyn } ]
              )
              | optional,
            policy | Array String | optional,
            props
              | refs."definitions.dss2-PropertiesHolderType"
              | { _ | Dyn }
              | optional,
            quality | String | optional,
            schemas
              | refs."definitions.dss2-SchemasType"
              | { _ | Dyn }
              | optional,
            sigAlgo | String | optional,
            sigPlacement
              | refs."definitions.dss2-SignaturePlacementType"
              | { _ | Dyn }
              | optional,
            sigType | String | optional,
            signedRefs
              | refs."definitions.dss2-SignedReferencesType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-OptionalInputsVerifyType" =
        {
            addKeyInfo
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-AdditionalKeyInfoType", { _ | Dyn } ]
              )
              | optional,
            addTimestamp
              | refs."definitions.dss2-AugmentSignatureInstructionType"
              | { _ | Dyn }
              | optional,
            claimedIdentity
              | refs."definitions.dss2-ClaimedIdentityType"
              | { _ | Dyn }
              | optional,
            lang | String | optional,
            other
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-AnyType", { _ | Dyn } ]
              )
              | optional,
            policy | Array String | optional,
            returnAugmented
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.dss2-AugmentSignatureInstructionType",
                    { _ | Dyn }
                  ]
              )
              | optional,
            returnProcDetails | Bool | optional,
            returnSigner | Bool | optional,
            returnSigningTime | Bool | optional,
            returnTimestamped
              | refs."definitions.dss2-AugmentSignatureInstructionType"
              | { _ | Dyn }
              | optional,
            returnTransformed
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.dss2-ReturnTransformedDocumentType",
                    { _ | Dyn }
                  ]
              )
              | optional,
            returnVerificationTime | Bool | optional,
            schemas
              | refs."definitions.dss2-SchemasType"
              | { _ | Dyn }
              | optional,
            useVerificationTime
              | refs."definitions.dss2-UseVerificationTimeType"
              | { _ | Dyn }
              | optional,
            verifyManifests | Bool | optional,
            ..
          },
      "definitions.dss2-OptionalOutputsSignType" =
        {
            docWithSignature
              | refs."definitions.dss2-DocumentWithSignatureType"
              | { _ | Dyn }
              | optional,
            other
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-AnyType", { _ | Dyn } ]
              )
              | optional,
            policy | Array String | optional,
            schemas
              | refs."definitions.dss2-SchemasType"
              | { _ | Dyn }
              | optional,
            transformed
              | refs."definitions.dss2-TransformedDocumentType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-OptionalOutputsVerifyType" =
        {
            augSig
              | refs."definitions.dss2-AugmentedSignatureType"
              | { _ | Dyn }
              | optional,
            docWithSignature
              | refs."definitions.dss2-DocumentWithSignatureType"
              | { _ | Dyn }
              | optional,
            other
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-AnyType", { _ | Dyn } ]
              )
              | optional,
            policy | Array String | optional,
            procDetails
              | refs."definitions.dss2-ProcessingDetailsType"
              | { _ | Dyn }
              | optional,
            result
              | refs."definitions.dss2-VerifyManifestResultsType"
              | { _ | Dyn }
              | optional,
            schemas
              | refs."definitions.dss2-SchemasType"
              | { _ | Dyn }
              | optional,
            signerIdentity
              | refs."definitions.saml2rw-NameIDType"
              | { _ | Dyn }
              | optional,
            signingTimeInfo
              | refs."definitions.dss2-SigningTimeInfoType"
              | { _ | Dyn }
              | optional,
            timestampedSig
              | refs."definitions.dss2-AugmentedSignatureType"
              | { _ | Dyn }
              | optional,
            transformed
              | refs."definitions.dss2-TransformedDocumentType"
              | { _ | Dyn }
              | optional,
            verificationTimeInfo
              | refs."definitions.dss2-VerificationTimeInfoType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-PendingRequestType" =
        {
            claimedIdentity
              | refs."definitions.dss2-ClaimedIdentityType"
              | { _ | Dyn }
              | optional,
            profile | Array String | optional,
            reqID | String | optional,
            ..
          },
      "definitions.dss2-ProcessingDetailsType" =
        {
            indeterminate
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DetailType", { _ | Dyn } ]
              )
              | optional,
            invalid
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DetailType", { _ | Dyn } ]
              )
              | optional,
            valid
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DetailType", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.dss2-PropertiesHolderType" =
        {
            signedProps
              | refs."definitions.dss2-PropertiesType"
              | { _ | Dyn }
              | optional,
            unsignedProps
              | refs."definitions.dss2-PropertiesType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-PropertiesType" =
        {
            prop
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-PropertyType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-PropertyType" =
        {
            id | String,
            val | refs."definitions.dsb-AnyType" | { _ | Dyn } | optional,
            ..
          },
      "definitions.dss2-ReturnTransformedDocumentType" =
        { whichRef | std.number.Integer, .. },
      "definitions.dss2-SchemasType" =
        {
            schema
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-SignRequestType" =
        {
            inDocs
              | refs."definitions.dss2-InputDocumentsType"
              | { _ | Dyn }
              | optional,
            optInp
              | refs."definitions.dss2-OptionalInputsSignType"
              | { _ | Dyn }
              | optional,
            profile | Array String | optional,
            reqID | String | optional,
            ..
          },
      "definitions.dss2-SignResponseType" =
        {
            optOutp
              | refs."definitions.dss2-OptionalOutputsSignType"
              | { _ | Dyn }
              | optional,
            profile | Array String | optional,
            reqID | String | optional,
            respID | String | optional,
            result | refs."definitions.dsb-ResultType" | { _ | Dyn } | optional,
            sigObj
              | refs."definitions.dss2-SignatureObjectType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-SignatureObjectType" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                b64Sig
                  | refs."definitions.dsb-Base64DataType"
                  | { _ | Dyn }
                  | optional,
                schemaRefs
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.dss2-DocumentBaseType", { _ | Dyn } ]
                  )
                  | optional,
                sigPtr
                  | refs."definitions.dss2-SignaturePtrType"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.dss2-SignaturePlacementType" =
        {
            createEnvelopedSignature | Bool | optional,
            nsDecl
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-NsPrefixMappingType", { _ | Dyn } ]
              )
              | optional,
            whichDoc
              | refs."definitions.dss2-DocumentBaseType"
              | { _ | Dyn }
              | optional,
            xPathAfter | String | optional,
            xPathFirstChildOf | String | optional,
            xpathAfter | String | optional,
            xpathFirstChildOf | String | optional,
            ..
          },
      "definitions.dss2-SignaturePtrType" =
        {
            nsDecl
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dsb-NsPrefixMappingType", { _ | Dyn } ]
              )
              | optional,
            whichDoc | refs."definitions.dss2-DocumentBaseType" | { _ | Dyn },
            xPath | String | optional,
            xpath | String | optional,
            ..
          },
      "definitions.dss2-SignedReferenceType" =
        {
            refId | String | optional,
            refURI | String | optional,
            transforms
              | refs."definitions.dsigrw-TransformsType"
              | { _ | Dyn }
              | optional,
            whichDoc | refs."definitions.dss2-DocumentBaseType" | { _ | Dyn },
            ..
          },
      "definitions.dss2-SignedReferencesType" =
        {
            signedRef
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-SignedReferenceType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-SigningTimeInfoType" =
        {
            signingTime | std.number.Integer,
            signingTimeBounds
              | refs."definitions.dss2-SigningTimeInfoType%3ASigningTimeBoundaries"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-SigningTimeInfoType%3ASigningTimeBoundaries" =
        {
            lowerBound | std.number.Integer | optional,
            upperBound | std.number.Integer | optional,
            ..
          },
      "definitions.dss2-TransformedDataType" =
        {
            ID | String | optional,
            b64Data | refs."definitions.dsb-Base64DataType" | { _ | Dyn },
            refType | String | optional,
            refURI | String | optional,
            schemaRefs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-DocumentType", { _ | Dyn } ]
              )
              | optional,
            transforms
              | refs."definitions.dsigrw-TransformsType"
              | { _ | Dyn }
              | optional,
            whichRef | std.number.Integer | optional,
            ..
          },
      "definitions.dss2-TransformedDocumentType" =
        {
            "doc" | refs."definitions.dss2-DocumentType" | { _ | Dyn },
            whichRef | std.number.Integer,
            ..
          },
      "definitions.dss2-UseVerificationTimeType" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              {
                b64Content | String | optional,
                currTime | Bool | optional,
                specTime | std.number.Integer | optional,
                ..
              }
            ],
      "definitions.dss2-VerificationTimeInfoType" =
        {
            additionalTimeInfo
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.dss2-AdditionalTimeInfoType",
                    { _ | Dyn }
                  ]
              )
              | optional,
            verificationTime | std.number.Integer,
            ..
          },
      "definitions.dss2-VerifyManifestResultsType" =
        {
            result
              | Array (
                std.contract.Sequence
                  [ refs."definitions.dss2-ManifestResultType", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.dss2-VerifyRequestType" =
        {
            inDocs
              | refs."definitions.dss2-InputDocumentsType"
              | { _ | Dyn }
              | optional,
            optInp
              | refs."definitions.dss2-OptionalInputsVerifyType"
              | { _ | Dyn }
              | optional,
            profile | Array String | optional,
            reqID | String | optional,
            sigObj
              | refs."definitions.dss2-SignatureObjectType"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.dss2-VerifyResponseType" =
        {
            optOutp
              | refs."definitions.dss2-OptionalOutputsVerifyType"
              | { _ | Dyn }
              | optional,
            profile | Array String | optional,
            reqID | String | optional,
            respID | String | optional,
            result | refs."definitions.dsb-ResultType" | { _ | Dyn } | optional,
            ..
          },
      "definitions.dss2-X509DigestType" =
        { alg | String, value | String | optional, .. },
      "definitions.saml2rw-NameIDType" =
        {
            format | String | optional,
            nameQual | String | optional,
            provId | String | optional,
            spNameQual | String | optional,
            spnameQualifier | String | optional,
            spprovidedID | String | optional,
            value | String | optional,
            ..
          },
    }
    in
  {
      genericResp | refs."definitions.dsb-ResponseBaseType" | optional,
      pendingReq | refs."definitions.dss2-PendingRequestType" | optional,
      signReq | refs."definitions.dss2-SignRequestType" | optional,
      signResp | refs."definitions.dss2-SignResponseType" | optional,
      verifyReq | refs."definitions.dss2-VerifyRequestType" | optional,
      verifyResp | refs."definitions.dss2-VerifyResponseType" | optional,
      ..
    }