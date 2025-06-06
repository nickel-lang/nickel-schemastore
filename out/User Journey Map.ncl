# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Config" =
        {
            color | String | doc "旅程图主色风格" | optional,
            height
              | refs."definitions.Partial%3CRecord%3CSectionType,number%3E%3E"
              | { _ | Dyn }
              | doc "每个部分的高度"
              | optional,
            sections
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'thought,
                      'stage,
                      'painPoint,
                      'emotion,
                      'chance,
                      'action
                    |]
                  ]
              )
              | doc m%"
                待显示的区块
                默认为: ['stage', 'action', 'emotion','thought']
              "%
              | optional,
            title | Bool | doc "显示旅程图标题" | optional,
            ..
          },
      "definitions.Partial%3CRecord%3CSectionType,number%3E%3E" =
        {
            action | Number | optional,
            chance | Number | optional,
            emotion | Number | optional,
            painPoint | Number | optional,
            stage | Number | optional,
            thought | Number | optional,
            ..
          },
      "definitions.UserAction" =
        {
            color | String | doc "展示颜色" | optional,
            description | String | doc "说明" | optional,
            emotion
              | std.number.Integer
              | js2n.number.Maximum 2
              | js2n.number.Minimum (-2)
              | doc "情绪得分"
              | optional,
            name | String | doc "行为名称",
            painPoints | Array String | doc "痛点" | optional,
            thoughts | Array String | doc "想法" | optional,
            ..
          },
      "definitions.YMLStage" =
        {
            actions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.UserAction", { _ | Dyn } ]
              )
              | doc "该阶段所有用户行为",
            color | String | doc "展示颜色" | optional,
            name | String | doc "阶段名称",
            painPoints | Array String | doc "痛点" | optional,
            thoughts | Array String | doc "想法" | optional,
            ..
          },
    }
    in
  {
      config | refs."definitions.Config" | doc "配置参数" | optional,
      stages | Array refs."definitions.YMLStage" | doc "步骤",
      title | String | doc "标题名" | optional,
      ..
    }