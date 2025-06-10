# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      configuration
        | {
          entrypoint | String,
          environmentVariables | { _ | String } | optional,
          lambdaLayers | js2n.Always | optional,
          memorySize | Number,
          runtime
            | std.enum.TagOrString
            | [|
              '"ruby3.2",
              '"ruby2.7",
              '"ruby2.5",
              '"python3.9",
              '"python3.8",
              '"python3.7",
              '"python3.6",
              '"python3.11",
              '"python3.10",
              '"python2.7",
              '"provided.al2",
              'provided,
              '"nodejs8.10",
              '"nodejs6.10",
              '"nodejs4.3-edge",
              '"nodejs4.3",
              '"nodejs22.x",
              '"nodejs20.x",
              '"nodejs18.x",
              '"nodejs16.x",
              '"nodejs14.x",
              '"nodejs12.x",
              '"nodejs10.x",
              'nodejs,
              '"java8.al2",
              'java8,
              'java17,
              'java11,
              '"go1.x",
              '"dotnetcore3.1",
              '"dotnetcore2.1",
              '"dotnetcore2.0",
              '"dotnetcore1.0",
              'dotnet6
            |],
          runtimeEngine | std.enum.TagOrString | [| 'ECS_FARGATE, 'LAMBDA |],
          timeout | Number | optional,
          vpcConfig
            | js2n.IfThenElse
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
                      properties = { runtimeEngine = js2n.Const "LAMBDA", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { lambdaLayers | Array String | optional, .. },
                  Array Dyn
                ])
              (std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "lambdaLayers" ],
                    Array Dyn
                  ]))
            | { securityGroupIds | Array String, subnetIds | Array String, }
            | optional,
        },
      package | { artifact | String, },
      service
        | {
          region | String | optional,
          type | std.enum.TagOrString | [| 'api, 'automation |],
          uuid | String,
        },
    }