# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.generator" =
        {
            name | std.enum.TagOrString | [| 'TsInterfaceFromDto, 'CSharp |],
            options
              | { _ | String }
              | doc "Generators are loosely coupled. Options are passed as a string dictionary. Only strings here sorry."
              | optional,
          },
    }
    in
  {
      connectEditor2DB | Bool | optional,
      defaultConnection | String | optional,
      dtoSuffix
        | String
        | doc "Suffix to append to the query base name to get the result class name"
        | optional,
      generators | Array refs."definitions.generator" | optional,
      helperAssemblies | Array String | optional,
      makeSelfTest
        | Bool
        | doc "Should QueryFirst add a selfTest method to the generated code? You will need add xunit and QueryFirst.CoreLib nugets to your project."
        | optional,
      provider
        | std.enum.TagOrString
        | [|
          '"System.Data.SqlClient",
          'Npgsql,
          '"MySql.Data.MySqlClient",
          '"Microsoft.Data.SqlClient"
        |]
        | optional,
      repoSuffix
        | String
        | doc "Suffix to append to the query base name to get the generated repository class name"
        | optional,
    }