# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.contactInfo" =
        js2n.record.Record
            {
              additional = 'Some String,
              patterns = {},
              properties =
                {
                    email = String,
                    homepage = String,
                    irc = String,
                    issues = String,
                    sources = String,
                  },
              required = {},
            },
      "definitions.entrypoint" =
        std.contract.any_of
            [
              {
                adapter | String | doc "The language adapter to use" | optional,
                value | String | doc "The entrypoint function or class",
                ..
              },
              String
            ],
      "definitions.environment" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'server, 'client, '"*" |] ],
      "definitions.nestedJar" =
        {
            file
              | String
              | doc "A string value pointing to a path from the root of the JAR to a nested JAR which should be loaded alongside the outer mod JAR",
            ..
          },
      "definitions.person" =
        std.contract.any_of
            [
              String,
              {
                contact
                  | refs."definitions.contactInfo"
                  | { _ | Dyn }
                  | doc "Contact information for the person"
                  | optional,
                name | String | doc "The name of the person",
                ..
              }
            ],
      "definitions.versionRange" = String,
      "definitions.versionRanges" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.versionRange", String ],
              Array (
                std.contract.Sequence
                  [ refs."definitions.versionRange", String ]
              )
            ],
    }
    in
  {
      accessWidener
        | String
        | doc "Path to an access widener definition file"
        | optional,
      authors
        | Array refs."definitions.person"
        | doc "The direct authorship information"
        | optional,
      breaks
        | { _ | refs."definitions.versionRanges" }
        | doc "id→versionRange map for dependencies. A successful match causes a hard failure"
        | optional,
      conflicts
        | { _ | refs."definitions.versionRanges" }
        | doc "id→versionRange map for dependencies. A successful match causes a soft failure (warning)"
        | optional,
      contact
        | refs."definitions.contactInfo"
        | doc "Contact information for the mod"
        | optional,
      contributors
        | Array refs."definitions.person"
        | doc "Contributors to this mod"
        | optional,
      custom
        | { _ | Dyn }
        | doc "A map of namespace:id→value for custom data fields."
        | optional,
      depends
        | { _ | refs."definitions.versionRanges" }
        | doc "id→versionRange map for dependencies. Failure to meet these causes a hard failure"
        | optional,
      description | String | doc "Description of the mod" | optional,
      entrypoints
        | js2n.record.Record
          {
            additional = 'Some (Array refs."definitions.entrypoint"),
            patterns = {},
            properties =
              {
                  client = Array refs."definitions.entrypoint",
                  fabric-datagen = Array refs."definitions.entrypoint",
                  fabric-gametest = Array refs."definitions.entrypoint",
                  main = Array refs."definitions.entrypoint",
                  preLaunch = Array refs."definitions.entrypoint",
                  server = Array refs."definitions.entrypoint",
                },
            required = {},
          }
        | doc "The entrypoints used by this mod"
        | optional,
      environment | refs."definitions.environment" | optional,
      icon
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [
                js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^[1-9][0-9]*$",
                      { _ | Dyn },
                      Array Dyn
                    ]),
                { _ | String }
              ]
          ]
        | optional,
      id
        | js2n.string.Matches "^[a-z][a-z0-9-_]{1,63}$"
        | doc "The mod identifier",
      jars
        | Array refs."definitions.nestedJar"
        | doc "Contains an array of nestedJar objects"
        | optional,
      languageAdapters
        | { _ | String }
        | doc "A string→string dictionary, connecting namespaces to LanguageAdapter implementations"
        | optional,
      license
        | std.contract.any_of [ String, Array String ]
        | doc "The license the mod uses"
        | optional,
      mixins
        | Array (
          std.contract.any_of
            [
              String,
              {
                config
                  | String
                  | doc "Path to mixin file from the root of the JAR"
                  | optional,
                environment | refs."definitions.environment" | optional,
                ..
              }
            ]
        )
        | optional,
      name | String | doc "Name of the mod" | optional,
      recommends
        | { _ | refs."definitions.versionRanges" }
        | doc "id→versionRange map for dependencies. Failure to meet these causes a soft failure (warning)"
        | optional,
      schemaVersion
        | std.number.Integer
        | std.contract.Equal 1
        | doc "The version of the fabric.mod.json schema",
      suggests
        | { _ | refs."definitions.versionRanges" }
        | doc "id→versionRange map for dependencies. Are not matched and are mainly used as metadata"
        | optional,
      version | String | doc "The mod version",
      ..
    }