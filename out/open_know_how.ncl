# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    { tsdc = js2n.array.Contains (js2n.Const "3DP"), },
                  required = { tsdc = true, },
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                material | String | optional,
                printing-process
                  | std.enum.TagOrString
                  | [| 'DMLS, 'MJF, 'SLS, 'SLA, 'FDM |]
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    { tsdc = js2n.array.Contains (js2n.Const "PCB"), },
                  required = { tsdc = true, },
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "2d-size-mm"
                  | js2n.array.MaxItems 2
                  | js2n.array.MinItems 2
                  | Array Number
                  | optional,
                component-sides | Number | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        {
          "$schema"
            | std.enum.TagOrString
            | [|
              '"https://w3id.org/oseg/schema/okh.json",
              '"https://json.schemastore.org/okh.json"
            |]
            | doc "Link to OKH JSON-Schema"
            | optional,
          attestation
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
              ]
            | doc m%"
              reference to one or multiple valid attestation(s) that the documentation is complete and fully qualifies as open source hardware;\
              issuing conformity assessment bodies according to DIN SPEC 3105-2:\
              - [Open Hardware Observatory](https://en.oho.wiki/wiki/Request_certification_for_your_project)\
              - [Open Source Ecology Germany](https://gitlab.opensourceecology.de/verein/projekte/cab/CAB)\
              - [OSHWA certification programme](https://certification.oshwa.org/)
            "%
            | optional,
          auxiliary
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          bom
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          contribution-guide
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "repo-relative path to the contribution guide"
            | optional,
          cpc-patent-class
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              patent class identifier of the Cooperative Patent Classification that describes best the field of technology of the OSH module.\
              Get it from here: <https://worldwide.espacenet.com/classification>
            "%
            | optional,
          documentation-language
            | std.contract.any_of
              [
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      { _ | Dyn },
                      Array Dyn,
                      Number,
                      String
                    ]),
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String
              ]
            | doc "IETF BCP 47 language tag for the language in which the documentation is written"
            | optional,
          documentation-readiness-level
            | js2n.OneOf
              [
                js2n.Const "ODRL-1",
                js2n.Const "ODRL-2",
                js2n.Const "ODRL-3",
                js2n.Const "ODRL-3*",
                js2n.Const "ODRL-4"
              ]
            | doc "ODRL-ID representing the development stage of the documentation; get it from: <https://w3id.org/oseg/ont/otrl>"
            | optional,
          export
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          forkOf
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          function
            | String
            | doc m%"
              functional description, e.g. what it actually does, what problem it solves, for whom, under which conditions etc.\
              So if you wish that someone finds & uses your OSH specifically e.g. for COVID-19-crisis response, include relevant keywords in this field
            "%,
          image
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          license
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              An SPDX license _expression
              (see: <https://spdx.github.io/spdx-spec/v2-draft/SPDX-license-expressions/>),
              usually a single SPDX license ID
              (see complete list: <https://spdx.org/licenses/>),
              or a combination of those,
              combined with AND or OR.
              If your license is not SPDX registered (yet),
              use a custom string prefixed with 'LicenseRef-',
              for example 'LicenseRef-MyVeryOwnLicense-1.3';
              please use the 'SPDX identifier' from
              <https://scancode-licensedb.aboutcode.org/>,
              if your license is there but not SPDX registered.
              Use 'LicenseRef-NOASSERTION' if no license is specified,
              'LicenseRef-NONE' if no license is specified
              (which usually means: all rights reserved),
              or 'LicenseRef-AllRightsReserved' or similar
              for projects clearly indicating that they are proprietary.
            "%,
          licensor
            | std.contract.any_of
              [
                js2n.array.ArrayOf String,
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      { _ | Dyn },
                      Array Dyn,
                      Number,
                      String
                    ]),
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String
              ]
            | doc "organization/individual behind the hardware design (holder of intellectual property)",
          manufacturing-instructions
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
              ]
            | doc "URL or repo-relative path to manufacturing instructions; multiple inputs possible (with one entry each)"
            | optional,
          mass
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          name
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Working title of the OSH component",
          okhv
            | std.contract.Equal "OKH-LOSHv1.0"
            | doc "version of OKH specification the OSH projects metadata follows (different version → different data fields in this file)",
          organization
            | std.contract.any_of
              [
                String,
                js2n.array.ArrayOf String,
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
              ]
            | doc "organization of the licensor or that represents (some of) the contributors of to project"
            | optional,
          outer-dimensions
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          part
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
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { source = js2n.Always, },
                              required = { source = true, },
                            },
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { export = js2n.Always, },
                              required = { export = true, },
                            },
                          Array Dyn
                        ]
                    ],
                  {
                    auxiliary
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    export
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    image
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    mass
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    name
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ],
                    outer-dimensions
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    source
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    tsdc
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                  }
                ]
            )
            | doc "physical component of this open source hardware module, for which technical documentation (design files etc.) is available under a free/open license"
            | optional,
          rdf
            | { namespace | String, prefix | String | optional, }
            | doc "repo-relative path (or absolute HTTP(S) URL) to to the corresponding ReadMe, which is the (human) entry-point into (the sources of) an OSH project"
            | optional,
          readme
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "repo-relative path (or absolute HTTP(S) URL) to to the corresponding ReadMe, which is the (human) entry-point into (the sources of) an OSH project"
            | optional,
          release
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "URL or repo local path to the release package of this version of the OSH module"
            | optional,
          repo
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              URL to the (human browsable) place where development happens;
              typically a (git) repository or Wiki page.
              Following this link, people should be able to contribute to the development:
              reporting issues, suggesting changes, connecting to the team etc.
            "%,
          software
            | Array
              {
                installation-guide
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "unambiguous reference to the installation guide for the corresponding software release"
                  | optional,
                release
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "unambiguous reference to the software release used for this version of the OSH module",
              }
            | doc "associated software package used to operate this piece of open source hardware"
            | optional,
          source
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          standard-compliance
            | Array String
            | doc m%"
              document-number of the official standard the OSH module complies;\
              multiple inputs possible (with one entry each)
            "%
            | optional,
          technology-readiness-level
            | js2n.OneOf
              [
                js2n.Const "OTRL-1",
                js2n.Const "OTRL-2",
                js2n.Const "OTRL-3",
                js2n.Const "OTRL-4",
                js2n.Const "OTRL-5",
                js2n.Const "OTRL-6"
              ]
            | doc "OTRL-ID representing the development stage of the OSH module; get it from: <https://w3id.org/oseg/ont/otrl>"
            | optional,
          tsdc
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          user-manual
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "URL or repo-relative path to user manual"
            | optional,
          version
            | String
            | doc "version of this Module, preferably following the [semantic versioning-scheme v2.0.0](https://semver.org/#semantic-versioning-200)"
            | optional,
        }
      ]