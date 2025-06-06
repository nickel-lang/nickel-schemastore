# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "oneOf.0.allOf.1.definitions.nodeFilters" = Array String,
      "oneOf.1.allOf.1.definitions.nodeFilters" = Array String,
      "oneOf.2.allOf.1.definitions.nodeFilters" = Array String,
      "oneOf.3.allOf.1.definitions.nodeFilters" = Array String,
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "v1alpha5", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          agents = js2n.number.Minimum 0,
                          apiVersion =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"k3d.io/v1alpha5" |]
                                ],
                          env =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          envVar = String,
                                          nodeFilters =
                                            refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                        },
                                    required = {},
                                  }),
                          files =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          description = String,
                                          destination = String,
                                          nodeFilters =
                                            refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                          source = String,
                                        },
                                    required =
                                      { destination = true, source = true, },
                                  }),
                          hostAliases =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          hostnames = js2n.array.ArrayOf String,
                                          ip = String,
                                        },
                                    required = {},
                                  }),
                          image = String,
                          kind =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'Simple |] ],
                          kubeAPI =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        host = String,
                                        hostIP = String,
                                        hostPort = String,
                                      },
                                  required = {},
                                },
                          metadata =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties = { name = String, },
                                  required = {},
                                },
                          network = String,
                          options =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        k3d =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      disableImageVolume = Bool,
                                                      disableLoadbalancer =
                                                        Bool,
                                                      disableRollback = Bool,
                                                      loadbalancer =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    configOverrides =
                                                                      Array Dyn,
                                                                  },
                                                              required = {},
                                                            },
                                                      timeout =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              Number,
                                                              String,
                                                              { _ | Dyn },
                                                              Array Dyn
                                                            ],
                                                      wait = Bool,
                                                    },
                                                required = {},
                                              },
                                        k3s =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      extraArgs =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      arg =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      nodeLabels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                    },
                                                required = {},
                                              },
                                        kubeconfig =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      switchCurrentContext =
                                                        Bool,
                                                      updateDefaultKubeconfig =
                                                        Bool,
                                                    },
                                                required = {},
                                              },
                                        runtime =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      agentsMemory = String,
                                                      gpuRequest = String,
                                                      hostPidMode = Bool,
                                                      labels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      serversMemory = String,
                                                      ulimits =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      hard =
                                                                        Number,
                                                                      name =
                                                                        String,
                                                                      soft =
                                                                        Number,
                                                                    },
                                                                required = {},
                                                              }),
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          ports =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                          port = String,
                                        },
                                    required = {},
                                  }),
                          registries =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        additionalProperties = js2n.Never,
                                        config = String,
                                        create =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      host = String,
                                                      hostPort = String,
                                                      image = String,
                                                      name = String,
                                                      proxy =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    password =
                                                                      String,
                                                                    remoteURL =
                                                                      String,
                                                                    username =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            },
                                                      volumes =
                                                        js2n.array.ArrayOf
                                                            String,
                                                    },
                                                required = {},
                                              },
                                        use = js2n.array.ArrayOf String,
                                      },
                                  required = {},
                                },
                          servers = js2n.number.Minimum 1,
                          subnet = String,
                          token = String,
                          volumes =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.0.allOf.1.definitions.nodeFilters",
                                          volume = String,
                                        },
                                    required = {},
                                  }),
                        },
                    required = { apiVersion = true, kind = true, },
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "v1alpha4", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          agents = js2n.number.Minimum 0,
                          apiVersion =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"k3d.io/v1alpha4" |]
                                ],
                          env =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          envVar = String,
                                          nodeFilters =
                                            refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                        },
                                    required = {},
                                  }),
                          hostAliases =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          hostnames = js2n.array.ArrayOf String,
                                          ip = String,
                                        },
                                    required = {},
                                  }),
                          image = String,
                          kind =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'Simple |] ],
                          kubeAPI =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        host = String,
                                        hostIP = String,
                                        hostPort = String,
                                      },
                                  required = {},
                                },
                          metadata =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties = { name = String, },
                                  required = {},
                                },
                          network = String,
                          options =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        k3d =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      disableImageVolume = Bool,
                                                      disableLoadbalancer =
                                                        Bool,
                                                      disableRollback = Bool,
                                                      loadbalancer =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    configOverrides =
                                                                      Array Dyn,
                                                                  },
                                                              required = {},
                                                            },
                                                      timeout =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              Number,
                                                              String,
                                                              { _ | Dyn },
                                                              Array Dyn
                                                            ],
                                                      wait = Bool,
                                                    },
                                                required = {},
                                              },
                                        k3s =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      extraArgs =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      arg =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      nodeLabels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                    },
                                                required = {},
                                              },
                                        kubeconfig =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      switchCurrentContext =
                                                        Bool,
                                                      updateDefaultKubeconfig =
                                                        Bool,
                                                    },
                                                required = {},
                                              },
                                        runtime =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      agentsMemory = String,
                                                      gpuRequest = String,
                                                      hostPidMode = Bool,
                                                      labels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      serversMemory = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          ports =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                          port = String,
                                        },
                                    required = {},
                                  }),
                          registries =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        additionalProperties = js2n.Never,
                                        config = String,
                                        create =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      host = String,
                                                      hostPort = String,
                                                      image = String,
                                                      name = String,
                                                      proxy =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    password =
                                                                      String,
                                                                    remoteURL =
                                                                      String,
                                                                    username =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            },
                                                      volumes =
                                                        js2n.array.ArrayOf
                                                            String,
                                                    },
                                                required = {},
                                              },
                                        use = js2n.array.ArrayOf String,
                                      },
                                  required = {},
                                },
                          servers = js2n.number.Minimum 1,
                          subnet = String,
                          token = String,
                          volumes =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.1.allOf.1.definitions.nodeFilters",
                                          volume = String,
                                        },
                                    required = {},
                                  }),
                        },
                    required = { apiVersion = true, kind = true, },
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "v1alpha3", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          agents = js2n.number.Minimum 0,
                          apiVersion =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"k3d.io/v1alpha3" |]
                                ],
                          env =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          envVar = String,
                                          nodeFilters =
                                            refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                        },
                                    required = {},
                                  }),
                          image = String,
                          kind =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'Simple |] ],
                          kubeAPI =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        host = String,
                                        hostIP = String,
                                        hostPort = String,
                                      },
                                  required = {},
                                },
                          name = String,
                          network = String,
                          options =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        k3d =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      disableImageVolume = Bool,
                                                      disableLoadbalancer =
                                                        Bool,
                                                      disableRollback = Bool,
                                                      loadbalancer =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    configOverrides =
                                                                      Array Dyn,
                                                                  },
                                                              required = {},
                                                            },
                                                      timeout =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              Number,
                                                              String,
                                                              { _ | Dyn },
                                                              Array Dyn
                                                            ],
                                                      wait = Bool,
                                                    },
                                                required = {},
                                              },
                                        k3s =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      extraArgs =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      arg =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      nodeLabels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                    },
                                                required = {},
                                              },
                                        kubeconfig =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      switchCurrentContext =
                                                        Bool,
                                                      updateDefaultKubeconfig =
                                                        Bool,
                                                    },
                                                required = {},
                                              },
                                        runtime =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      agentsMemory = String,
                                                      gpuRequest = String,
                                                      labels =
                                                        js2n.array.ArrayOf
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      label =
                                                                        String,
                                                                      nodeFilters =
                                                                        refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                                                    },
                                                                required = {},
                                                              }),
                                                      serversMemory = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          ports =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                          port = String,
                                        },
                                    required = {},
                                  }),
                          registries =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        additionalProperties = js2n.Never,
                                        config = String,
                                        create =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      host = String,
                                                      hostPort = String,
                                                      name = String,
                                                    },
                                                required = {},
                                              },
                                        use = js2n.array.ArrayOf String,
                                      },
                                  required = {},
                                },
                          servers = js2n.number.Minimum 1,
                          subnet = String,
                          token = String,
                          volumes =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.2.allOf.1.definitions.nodeFilters",
                                          volume = String,
                                        },
                                    required = {},
                                  }),
                        },
                    required = { apiVersion = true, kind = true, },
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { version = js2n.Const "v1alpha2", },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          agents = js2n.number.Minimum 0,
                          apiVersion =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"k3d.io/v1alpha2" |]
                                ],
                          env =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          envVar = String,
                                          nodeFilters =
                                            refs."oneOf.3.allOf.1.definitions.nodeFilters",
                                        },
                                    required = {},
                                  }),
                          image = String,
                          kind =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'Simple |] ],
                          kubeAPI =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        host = String,
                                        hostIP = String,
                                        hostPort = String,
                                      },
                                  required = {},
                                },
                          labels =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          label = String,
                                          nodeFilters =
                                            refs."oneOf.3.allOf.1.definitions.nodeFilters",
                                        },
                                    required = {},
                                  }),
                          name = String,
                          network = String,
                          options =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        k3d =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      disableHostIPInjection =
                                                        Bool,
                                                      disableImageVolume = Bool,
                                                      disableLoadbalancer =
                                                        Bool,
                                                      disableRollback = Bool,
                                                      timeout = String,
                                                      wait = Bool,
                                                    },
                                                required = {},
                                              },
                                        k3s =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      extraAgentArgs =
                                                        js2n.array.ArrayOf
                                                            String,
                                                      extraServerArgs =
                                                        js2n.array.ArrayOf
                                                            String,
                                                    },
                                                required = {},
                                              },
                                        kubeconfig =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      switchCurrentContext =
                                                        Bool,
                                                      updateDefaultKubeconfig =
                                                        Bool,
                                                    },
                                                required = {},
                                              },
                                        runtime =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      agentsMemory = String,
                                                      gpuRequest = String,
                                                      serversMemory = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          ports =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.3.allOf.1.definitions.nodeFilters",
                                          port = String,
                                        },
                                    required = {},
                                  }),
                          registries = { _ | Dyn },
                          servers = js2n.number.Minimum 1,
                          subnet = String,
                          token = String,
                          volumes =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          nodeFilters =
                                            refs."oneOf.3.allOf.1.definitions.nodeFilters",
                                          volume = String,
                                        },
                                    required = {},
                                  }),
                        },
                    required = { apiVersion = true, kind = true, },
                  }
              ]
          ],
        { _ | Dyn }
      ]