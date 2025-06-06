# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Address" =
        {
            addressLine | Array (js2n.string.Matches "^.{1,70}$") | optional,
            addressType
              | std.enum.TagOrString
              | [| 'GEOG, 'BIZZ, 'HOME |]
              | optional,
            buildingName | js2n.string.Matches "^.{1,16}$" | optional,
            buildingNumber | String | optional,
            country | js2n.string.Matches "^[A-Z]{2}$" | optional,
            countrySubDivision | js2n.string.Matches "^.{1,35}$" | optional,
            department | js2n.string.Matches "^.{1,50}$" | optional,
            districtName | js2n.string.Matches "^.{1,35}$" | optional,
            floor | js2n.string.Matches "^.{1,70}$" | optional,
            postBox | js2n.string.Matches "^.{1,16}$" | optional,
            postCode | js2n.string.Matches "^.{1,16}$" | optional,
            room | String | optional,
            streetName | js2n.string.Matches "^.{1,70}$" | optional,
            subDepartment | js2n.string.Matches "^.{1,70}$" | optional,
            townLocationName | js2n.string.Matches "^.{1,35}$" | optional,
            townName | js2n.string.Matches "^.{1,35}$" | optional,
            ..
          },
      "definitions.Beneficiary" =
        {
            accountNumber | Array String,
            beneficiaryPersons
              | Array (
                std.contract.Sequence [ refs."definitions.Person", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.BeneficiaryVASP" =
        {
            beneficiaryVASP
              | refs."definitions.Person"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.DateAndPlaceOfBirth" =
        {
            dateOfBirth
              | js2n.string.Matches "^([0-9]{4})-([0-9]{2})-([0-9]{2})$"
              | optional,
            placeOfBirth | js2n.string.Matches "^.{1,70}$" | optional,
            ..
          },
      "definitions.LegalPerson" =
        {
            countryOfRegistration | js2n.string.Matches "^[A-Z]{2}$" | optional,
            customerNumber | js2n.string.Matches "^.{1,50}$" | optional,
            geographicAddress
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Address", { _ | Dyn } ]
              )
              | optional,
            name | refs."definitions.LegalPersonName" | { _ | Dyn },
            nationalIdentification
              | refs."definitions.NationalIdentification"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.LegalPersonName" =
        {
            localNameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LocalLegalPersonNameId", { _ | Dyn } ]
              )
              | optional,
            nameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LegalPersonNameId", { _ | Dyn } ]
              ),
            phoneticNameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LocalLegalPersonNameId", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.LegalPersonNameId" =
        {
            legalPersonName | js2n.string.Matches "^.{1,100}$" | optional,
            legalPersonNameIdentifierType
              | std.enum.TagOrString
              | [| 'TRAD, 'SHRT, 'LEGL |]
              | optional,
            ..
          },
      "definitions.LocalLegalPersonNameId" =
        {
            legalPersonName | js2n.string.Matches "^.{1,100}$" | optional,
            legalPersonNameIdentifierType
              | std.enum.TagOrString
              | [| 'TRAD, 'SHRT, 'LEGL |]
              | optional,
            ..
          },
      "definitions.LocalNaturalPersonNameId" =
        {
            nameIdentifierType
              | std.enum.TagOrString
              | [| 'MISC, 'LEGL, 'MAID, 'BIRT, 'ALIA |]
              | optional,
            primaryIdentifier | js2n.string.Matches "^.{1,100}$" | optional,
            secondaryIdentifier | js2n.string.Matches "^.{0,100}$" | optional,
            ..
          },
      "definitions.NationalIdentification" =
        {
            countryOfIssue | js2n.string.Matches "^[A-Z]{2}$" | optional,
            nationalIdentifier | js2n.string.Matches "^.{1,35}$" | optional,
            nationalIdentifierType
              | std.enum.TagOrString
              | [|
                'MISC,
                'LEIX,
                'IDCD,
                'SOCS,
                'TXID,
                'FIIN,
                'DRLC,
                'RAID,
                'CCPT,
                'ARNU
              |]
              | optional,
            registrationAuthority
              | js2n.string.Matches "^RA([0-9]{6})$"
              | optional,
            ..
          },
      "definitions.NaturalPerson" =
        {
            countryOfResidence | js2n.string.Matches "^[A-Z]{2}$" | optional,
            customerIdentification | js2n.string.Matches "^.{1,50}$" | optional,
            dateAndPlaceOfBirth
              | refs."definitions.DateAndPlaceOfBirth"
              | { _ | Dyn }
              | optional,
            geographicAddress
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Address", { _ | Dyn } ]
              )
              | optional,
            name
              | refs."definitions.NaturalPersonName"
              | { _ | Dyn }
              | optional,
            nationalIdentification
              | refs."definitions.NationalIdentification"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.NaturalPersonName" =
        {
            localNameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LocalNaturalPersonNameId", { _ | Dyn } ]
              )
              | optional,
            nameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NaturalPersonNameId", { _ | Dyn } ]
              )
              | optional,
            phoneticNameIdentifier
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LocalNaturalPersonNameId", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.NaturalPersonNameId" =
        {
            nameIdentifierType
              | std.enum.TagOrString
              | [| 'MISC, 'LEGL, 'MAID, 'BIRT, 'ALIA |]
              | optional,
            primaryIdentifier | String | optional,
            secondaryIdentifier | String | optional,
            ..
          },
      "definitions.OriginatingVASP" =
        {
            originatingVASP
              | refs."definitions.Person"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.Originator" =
        {
            accountNumber | Array String,
            originatorPersons
              | Array (
                std.contract.Sequence [ refs."definitions.Person", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.Person" =
        {
            legalPerson
              | refs."definitions.LegalPerson"
              | { _ | Dyn }
              | optional,
            naturalPerson
              | refs."definitions.NaturalPerson"
              | { _ | Dyn }
              | optional,
            ..
          },
    }
    in
  {
      Beneficiary | refs."definitions.Beneficiary",
      BeneficiaryVASP | refs."definitions.BeneficiaryVASP",
      OriginatingVASP | refs."definitions.OriginatingVASP",
      Originator | refs."definitions.Originator",
      ..
    }