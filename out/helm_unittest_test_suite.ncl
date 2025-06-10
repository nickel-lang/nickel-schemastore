# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.capabilities" =
        {
            apiVersions
              | Array String
              | doc "A set of versions, default to the versionset used by the defined kubernetes version."
              | optional,
            majorVersion
              | std.number.Integer
              | doc "The kubernetes major version, default to the major version which is set by helm."
              | optional,
            minorVersion
              | std.number.Integer
              | doc "The kubernetes minor version, default to the minor version which is set by helm."
              | optional,
          },
      "definitions.chart" =
        {
            appVersion
              | String
              | doc "The app-version of the chart, default to the app-version set in the Chart."
              | optional,
            version
              | String
              | doc "The semantic version of the chart, default to the version set in the Chart."
              | optional,
          },
      "definitions.documentIndex" = std.number.Integer,
      "definitions.documentSelector" =
        {
            path | String | doc "The `documentSelector` path to assert.",
            value | String | doc "The expected value.",
          },
      "definitions.kubernetesProvider" =
        {
            objects
              | js2n.array.MinItems 1
              | Array ({ _ | Dyn })
              | doc "Define the Kubernetes objects to fake",
            scheme | { _ | Dyn } | doc "Define the Kubernetes schema to fake",
            ..
          },
      "definitions.release" =
        {
            name
              | String
              | doc "The release name, default to \"RELEASE-NAME\"."
              | optional,
            namespace
              | String
              | doc "The namespace which release be installed to, default to \"NAMESPACE\"."
              | optional,
            revision
              | std.number.Integer
              | doc "The revision of current build, default to 0."
              | optional,
            upgrade
              | Bool
              | doc "Whether the build is an upgrade, default to false."
              | optional,
          },
      "definitions.set" = {  .. },
      "definitions.templates" = Array String,
      "definitions.values" = Array String,
    }
    in
  {
      capabilities | refs."definitions.capabilities" | optional,
      chart | refs."definitions.chart" | optional,
      kubernetesProvider | refs."definitions.kubernetesProvider" | optional,
      release | refs."definitions.release" | optional,
      set | refs."definitions.set" | optional,
      snapshotId
        | String
        | doc "A suffix to your snapshot file for the tests.  Ideal for helm tests."
        | optional,
      suite
        | String
        | doc "The suite name to show on test result output."
        | optional,
      templates | refs."definitions.templates" | optional,
      tests
        | Array
          {
            asserts
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
                                properties =
                                  {
                                      equal =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    decodeBase64 = Bool,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    value =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                  },
                                              required =
                                                { path = true, value = true, },
                                            },
                                    },
                                required = { equal = true, },
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
                                properties =
                                  {
                                      equalRaw =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties = { value = String, },
                                              required = { value = true, },
                                            },
                                    },
                                required = { equalRaw = true, },
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
                                properties =
                                  {
                                      exists =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { exists = true, },
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
                                properties =
                                  {
                                      notExists =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { notExists = true, },
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
                                properties =
                                  {
                                      notEqual =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    decodeBase64 = Bool,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    value =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                  },
                                              required =
                                                { path = true, value = true, },
                                            },
                                    },
                                required = { notEqual = true, },
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
                                properties =
                                  {
                                      notEqualRaw =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties = { value = String, },
                                              required = { value = true, },
                                            },
                                    },
                                required = { notEqualRaw = true, },
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
                                properties =
                                  {
                                      matchRegex =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    decodeBase64 = Bool,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    pattern = String,
                                                  },
                                              required =
                                                {
                                                    path = true,
                                                    pattern = true,
                                                  },
                                            },
                                    },
                                required = { matchRegex = true, },
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
                                properties =
                                  {
                                      matchRegexRaw =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                { pattern = String, },
                                              required = { pattern = true, },
                                            },
                                    },
                                required = { matchRegexRaw = true, },
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
                                properties =
                                  {
                                      notMatchRegex =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    decodeBase64 = Bool,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    pattern = String,
                                                  },
                                              required =
                                                {
                                                    path = true,
                                                    pattern = true,
                                                  },
                                            },
                                    },
                                required = { notMatchRegex = true, },
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
                                properties =
                                  {
                                      notMatchRegexRaw =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                { pattern = String, },
                                              required = { pattern = true, },
                                            },
                                    },
                                required = { notMatchRegexRaw = true, },
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
                                properties =
                                  {
                                      contains =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    any = Bool,
                                                    content =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                    count = std.number.Integer,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required =
                                                {
                                                    content = true,
                                                    path = true,
                                                  },
                                            },
                                    },
                                required = { contains = true, },
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
                                properties =
                                  {
                                      notContains =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    any = Bool,
                                                    content =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required =
                                                {
                                                    content = true,
                                                    path = true,
                                                  },
                                            },
                                    },
                                required = { notContains = true, },
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
                                properties =
                                  {
                                      isNullOrEmpty =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { isNullOrEmpty = true, },
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
                                properties =
                                  {
                                      isNotNullOrEmpty =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { isNotNullOrEmpty = true, },
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
                                properties =
                                  {
                                      isKind =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties = { of = String, },
                                              required = {},
                                            },
                                    },
                                required = { isKind = true, },
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
                                properties =
                                  {
                                      isAPIVersion =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties = { of = String, },
                                              required = {},
                                            },
                                    },
                                required = { isAPIVersion = true, },
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
                                properties =
                                  {
                                      isSubset =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    content =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required =
                                                {
                                                    content = true,
                                                    path = true,
                                                  },
                                            },
                                    },
                                required = { isSubset = true, },
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
                                properties =
                                  {
                                      isNotSubset =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    content =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String,
                                                            { _ | Dyn },
                                                            Array Dyn
                                                          ],
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required =
                                                {
                                                    content = true,
                                                    path = true,
                                                  },
                                            },
                                    },
                                required = { isNotSubset = true, },
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
                                properties =
                                  {
                                      hasDocuments =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                { count = std.number.Integer, },
                                              required = {},
                                            },
                                    },
                                required = { hasDocuments = true, },
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
                                properties =
                                  {
                                      lengthEqual =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    count = std.number.Integer,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    paths =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { lengthEqual = true, },
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
                                properties =
                                  {
                                      notLengthEqual =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    count = std.number.Integer,
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                    paths =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { notLengthEqual = true, },
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
                                properties =
                                  {
                                      containsDocument =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    any = Bool,
                                                    apiVersion = String,
                                                    kind = String,
                                                    name = String,
                                                    namespace = String,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { containsDocument = true, },
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
                                properties =
                                  {
                                      matchSnapshot =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    path =
                                                      std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ],
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { matchSnapshot = true, },
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
                                properties = { matchSnapshotRaw = {}, },
                                required = { matchSnapshotRaw = true, },
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
                                properties =
                                  {
                                      failedTemplate =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                { errorMessage = String, },
                                              required = {},
                                            },
                                    },
                                required = { failedTemplate = true, },
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
                                properties = { notFailedTemplate = {}, },
                                required = { notFailedTemplate = true, },
                              },
                            Array Dyn
                          ]
                      ],
                    {
                      contains | js2n.Always | optional,
                      containsDocument | js2n.Always | optional,
                      documentIndex
                        | refs."definitions.documentIndex"
                        | optional,
                      documentSelector
                        | refs."definitions.documentSelector"
                        | optional,
                      equal | js2n.Always | optional,
                      equalRaw | js2n.Always | optional,
                      exists | js2n.Always | optional,
                      failedTemplate | js2n.Always | optional,
                      hasDocuments | js2n.Always | optional,
                      isAPIVersion | js2n.Always | optional,
                      isKind | js2n.Always | optional,
                      isNotNullOrEmpty | js2n.Always | optional,
                      isNotSubset | js2n.Always | optional,
                      isNullOrEmpty | js2n.Always | optional,
                      isSubset | js2n.Always | optional,
                      lengthEqual | js2n.Always | optional,
                      matchRegex | js2n.Always | optional,
                      matchRegexRaw | js2n.Always | optional,
                      matchSnapshot | js2n.Always | optional,
                      matchSnapshotRaw | js2n.Always | optional,
                      not
                        | Bool
                        | doc "Set to true to assert contrarily, default to false."
                        | optional,
                      notContains | js2n.Always | optional,
                      notEqual | js2n.Always | optional,
                      notEqualRaw | js2n.Always | optional,
                      notExists | js2n.Always | optional,
                      notFailedTemplate | js2n.Always | optional,
                      notLengthEqual | js2n.Always | optional,
                      notMatchRegex | js2n.Always | optional,
                      notMatchRegexRaw | js2n.Always | optional,
                      template
                        | String
                        | doc "The template file which render the manifest to be asserted, default to the list of template files defined in templates of the suite file, unless the template is in the testjob."
                        | optional,
                    }
                  ]
              )
              | doc "The assertions to validate the rendered chart."
              | optional,
            capabilities | refs."definitions.capabilities" | optional,
            chart | refs."definitions.chart" | optional,
            documentIndex | refs."definitions.documentIndex" | optional,
            documentSelector | refs."definitions.documentSelector" | optional,
            it
              | String
              | doc "Define the name of the test with TDD style or any message you like."
              | optional,
            release | refs."definitions.release" | optional,
            set | refs."definitions.set" | optional,
            template
              | String
              | doc "The template file(s) which render the manifest to be tested, default to the list of template file defined in templates of suite file, unless template is defined in the assertion(s)."
              | optional,
            templates | refs."definitions.templates" | optional,
            values | refs."definitions.values" | optional,
          }
        | doc "Where you define your test jobs to run",
      values | refs."definitions.values" | optional,
    }