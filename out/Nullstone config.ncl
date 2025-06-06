# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.app" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    capabilities =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.capabilities", { _ | Dyn } ],
                            std.contract.Sequence
                              [
                                refs."definitions.capabilitiesArray",
                                Array Dyn
                              ]
                          ],
                    connections =
                      std.contract.Sequence
                          [
                            refs."definitions.connection_targets",
                            { _ | Dyn }
                          ],
                    environment =
                      js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { "^[A-Za-z0-9_]+$" = String, },
                            properties = {},
                            required = {},
                          },
                    framework = String,
                    is_shared = Bool,
                    module = String,
                    module_version = String,
                    vars =
                      std.contract.Sequence
                          [ refs."definitions.variables", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.block" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    connections =
                      std.contract.Sequence
                          [
                            refs."definitions.connection_targets",
                            { _ | Dyn }
                          ],
                    is_shared = Bool,
                    module = String,
                    module_version = String,
                    vars =
                      std.contract.Sequence
                          [ refs."definitions.variables", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.capabilities" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.capability", { _ | Dyn } ]
          },
      "definitions.capabilitiesArray" =
        Array (
            std.contract.Sequence
              [ refs."definitions.namedCapability", { _ | Dyn } ]
          ),
      "definitions.capability" =
        {
            connections
              | refs."definitions.connection_targets"
              | { _ | Dyn }
              | optional,
            module | String | optional,
            module_version | String | optional,
            namespace
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            vars | refs."definitions.variables" | { _ | Dyn } | optional,
            ..
          },
      "definitions.cluster" =
        std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ],
      "definitions.cluster_namespace" =
        std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ],
      "definitions.connection_target" =
        {
            block_name | String,
            env_name | String | optional,
            stack_name | String | optional,
            ..
          },
      "definitions.connection_targets" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[_a-z0-9\\-]+$" =
                      std.contract.any_of
                          [
                            js2n.string.Matches
                              "^(?:([a-zA-Z0-9\\-]+)\\.)?(?:([a-zA-Z0-9\\-]+)\\.)?([a-zA-Z0-9\\-]+)$",
                            std.contract.Sequence
                              [
                                refs."definitions.connection_target",
                                { _ | Dyn }
                              ]
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.datastore" =
        std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ],
      "definitions.domain" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    connections =
                      std.contract.Sequence
                          [
                            refs."definitions.connection_targets",
                            { _ | Dyn }
                          ],
                    dns_name = String,
                    module = String,
                    module_version = String,
                    vars =
                      std.contract.Sequence
                          [ refs."definitions.variables", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.ingress" =
        std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ],
      "definitions.namedCapability" =
        {
            connections
              | refs."definitions.connection_targets"
              | { _ | Dyn }
              | optional,
            module | String | optional,
            module_version | String | optional,
            name | String | optional,
            namespace | String | optional,
            vars | refs."definitions.variables" | { _ | Dyn } | optional,
            ..
          },
      "definitions.network" =
        std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ],
      "definitions.subdomain" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    connections =
                      std.contract.Sequence
                          [
                            refs."definitions.connection_targets",
                            { _ | Dyn }
                          ],
                    dns_name = String,
                    is_shared = Bool,
                    module = String,
                    module_version = String,
                    vars =
                      std.contract.Sequence
                          [ refs."definitions.variables", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.variables" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[A-Za-z_][A-Za-z0-9_\\-]*$" =
                      std.contract.any_of
                          [
                            Bool,
                            String,
                            std.number.Integer,
                            Number,
                            { _ | Dyn },
                            Array Dyn
                          ],
                  },
              properties = {},
              required = {},
            },
    }
    in
  {
      apps
        | { _ | refs."definitions.app" }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      blocks
        | { _ | refs."definitions.block" }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      cluster_namespaces
        | {
          _ | std.contract.Sequence
            [ refs."definitions.cluster_namespace", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      clusters
        | {
          _ | std.contract.Sequence [ refs."definitions.cluster", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      datastores
        | {
          _ | std.contract.Sequence
            [ refs."definitions.datastore", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      domains
        | { _ | refs."definitions.domain" }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      ingresses
        | {
          _ | std.contract.Sequence [ refs."definitions.ingress", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      networks
        | {
          _ | std.contract.Sequence [ refs."definitions.network", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      subdomains
        | { _ | refs."definitions.subdomain" }
        | js2n.record.FieldsMatch "^[a-z0-9\\-]+$"
        | optional,
      version | std.contract.Equal "0.1",
    }