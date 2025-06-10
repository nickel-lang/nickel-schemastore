# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AddOn" =
        {
            actions | {  .. } | optional,
            as | String | optional,
            image | String | doc "中间件镜像" | optional,
            options | { _ | String } | doc "中间件的元数据和配置" | optional,
            plan | String | doc "中间件 engine 和规格, 如 mysql:basic" | optional,
            ..
          },
      "definitions.AddOns" =
        { _ | std.contract.Sequence [ refs."definitions.AddOn", { _ | Dyn } ] },
      "definitions.Binds" = Array String,
      "definitions.ContainerSnippet" = {  .. },
      "definitions.Deployments" =
        {
            labels | { _ | String } | doc "标签" | optional,
            policies | String | doc "策略" | optional,
            replicas
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "Pod 副本数"
              | optional,
            selectors
              | refs."definitions.Selectors"
              | { _ | Dyn }
              | doc "K8s selector"
              | optional,
            workload | String | doc "负载" | optional,
            ..
          },
      "definitions.Endpoint" =
        {
            backend_path | String | doc "聚合路由的后端服务路径" | optional,
            domain | String | doc "域名, 将该服务的接口聚合到该域名下" | optional,
            path | String | doc "聚合路由的路由路径" | optional,
            policies
              | refs."definitions.EndpointPolicies"
              | { _ | Dyn }
              | doc "路由策略"
              | optional,
            ..
          },
      "definitions.EndpointPolicies" =
        {
            cors | {  .. } | doc "跨域策略" | optional,
            rate_limit | {  .. } | doc "限流策略" | optional,
            ..
          },
      "definitions.EnvMap" =
        std.contract.Sequence
            [
              {
                _ | std.contract.any_of
                  [ String, std.number.Integer, Number, Bool ]
              },
              js2n.record.FieldsMatch "^[A-Z][^a-z]*$"
            ],
      "definitions.EnvObject" =
        {
            addons
              | refs."definitions.AddOns"
              | { _ | Dyn }
              | doc "中间件列表"
              | optional,
            envs
              | refs."definitions.EnvMap"
              | { _ | Dyn }
              | doc "环境变量"
              | optional,
            services
              | refs."definitions.Services"
              | { _ | Dyn }
              | doc "服务列表"
              | optional,
            ..
          },
      "definitions.EnvObjects" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "development|test|staging|production" =
                      std.contract.Sequence
                          [ refs."definitions.EnvObject", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.ExecCheck" =
        {
            cmd | String | doc "执行健康检查的容器命令" | optional,
            duration | std.number.Integer | doc "执行健康检查的间隔时间" | optional,
            ..
          },
      "definitions.HTTPCheck" =
        {
            duration | std.number.Integer | doc "执行健康检查的间隔时间" | optional,
            path | String | doc "路径" | optional,
            port | std.number.Integer | doc "端口" | optional,
            ..
          },
      "definitions.HealthCheck" =
        {
            exec
              | refs."definitions.ExecCheck"
              | { _ | Dyn }
              | doc "通过执行容器命令进行健康检查"
              | optional,
            http
              | refs."definitions.HTTPCheck"
              | { _ | Dyn }
              | doc "通过 HTTP 接口进行健康检查"
              | optional,
            ..
          },
      "definitions.InitContainer" =
        {
            cmd | String | doc "容器启动命令" | optional,
            image | String | doc "容器镜像" | optional,
            resources
              | refs."definitions.Resources"
              | { _ | Dyn }
              | doc "容器资源"
              | optional,
            shared_dir
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SharedDir", { _ | Dyn } ]
              )
              | doc "共享目录"
              | optional,
            ..
          },
      "definitions.Job" =
        {
            binds
              | refs."definitions.Binds"
              | Array Dyn
              | doc "定义挂载的目录"
              | optional,
            cmd | String | doc "容器启动命令, 如不填则默认为容器的 Entrypoint" | optional,
            envs
              | refs."definitions.EnvMap"
              | { _ | Dyn }
              | doc "容器环境变量"
              | optional,
            hosts | String | doc "定义服务域名" | optional,
            image | String | doc "容器镜像" | optional,
            init
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.InitContainer", { _ | Dyn } ]
              }
              | doc "定义初始化容器, 如数据准备, migration 等"
              | optional,
            labels | { _ | String } | doc "定义 Pod 标签" | optional,
            resources
              | refs."definitions.Resources"
              | { _ | Dyn }
              | doc "定义 Pod 运行所请求的资源"
              | optional,
            volumes
              | refs."definitions.Volumes"
              | Array Dyn
              | doc "定义卷"
              | optional,
            ..
          },
      "definitions.Jobs" =
        { _ | std.contract.Sequence [ refs."definitions.Job", { _ | Dyn } ] },
      "definitions.K8SSnippet" =
        {
            container
              | refs."definitions.ContainerSnippet"
              | { _ | Dyn }
              | doc "定义容器细节, 需要熟悉 Kubernetes, 参考 k8s.io/api/core/v1.Container"
              | optional,
            ..
          },
      "definitions.Resources" =
        {
            cpu
              | std.contract.any_of [ Number, String ]
              | doc m%"
                CPU 核心数, 对应 K8s 中 request 值.
                可以用 ${request_cpu:1} 引用 values 和设置默认值
              "%
              | optional,
            disk | std.number.Integer | doc "磁盘请求量" | optional,
            emptydir_size | std.number.Integer | optional,
            ephemeral_storage_size | std.number.Integer | optional,
            max_cpu | Number | doc "最大 CPU 核心数" | optional,
            max_mem | std.number.Integer | doc "最大内存数" | optional,
            mem
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "内存数, 单位 M"
              | optional,
            network | { _ | String } | doc "网络配置" | optional,
            ..
          },
      "definitions.Selector" =
        { not | Bool | optional, values | Array String | optional, .. },
      "definitions.Selectors" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.Selector", { _ | Dyn } ]
          },
      "definitions.Service" =
        {
            annotations | { _ | String } | doc "注解" | optional,
            binds
              | refs."definitions.Binds"
              | Array Dyn
              | doc "文件挂载"
              | optional,
            cmd | String | doc "启动命令, 不填则按镜像的 Entrypoint 启动" | optional,
            depends_on | Array String | doc "依赖的服务" | optional,
            deployments
              | refs."definitions.Deployments"
              | { _ | Dyn }
              | doc "定义 K8s Deployment 细节"
              | optional,
            endpoints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Endpoint", { _ | Dyn } ]
              )
              | doc "定义域名, 可以引用 values 中定义的值"
              | optional,
            envs
              | refs."definitions.EnvMap"
              | { _ | Dyn }
              | doc "环境变量, 优先级高于全局环境变量"
              | optional,
            expose
              | Array std.number.Integer
              | doc "要开放的端口, Erda 会创建一个 K8s Service 并开放这些端口"
              | optional,
            health_check
              | refs."definitions.HealthCheck"
              | { _ | Dyn }
              | doc "健康检查, 即服务可提供服务的条件"
              | optional,
            hosts | Array String | doc "域名列表, 可以引用 values 中定义的值" | optional,
            image | String | doc "服务镜像" | optional,
            image_password | String | doc "拉取镜像的密码" | optional,
            image_username | String | doc "拉取镜像的用户名" | optional,
            init
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.InitContainer", { _ | Dyn } ]
              }
              | doc "定义初始化容器, 如数据准备, migration 等"
              | optional,
            k8s_snippet
              | refs."definitions.K8SSnippet"
              | { _ | Dyn }
              | doc "定义容器细节"
              | optional,
            labels | { _ | String } | doc "服务标签" | optional,
            mesh_enable | Bool | optional,
            ports
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ServicePort", { _ | Dyn } ]
              )
              | doc "要启用的端口"
              | optional,
            resources
              | refs."definitions.Resources"
              | { _ | Dyn }
              | doc "服务 (Pod) 使用的资源"
              | optional,
            sidecars
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[A-za-z].*" =
                          std.contract.Sequence
                              [ refs."definitions.SideCar", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "定义边车容器, 如日志收集, 网络代理等"
              | optional,
            traffic_security
              | refs."definitions.TrafficSecurity"
              | { _ | Dyn }
              | doc "定义流量安全策略 (会引用网关)"
              | optional,
            volumes
              | refs."definitions.Volumes"
              | Array Dyn
              | doc "定义卷"
              | optional,
            ..
          },
      "definitions.ServicePort" =
        {
            "default"
              | Bool
              | doc "是否为默认端口, 设置域名时会将对该域名的访问反向代理到默认端口"
              | optional,
            expose | Bool | doc "是否开放该端口" | optional,
            l4_protocol
              | std.enum.TagOrString
              | [| 'UDP, 'TCP |]
              | doc "4 层网络协议"
              | optional,
            port | std.number.Integer | doc "启用的端口号" | optional,
            protocol | String | doc "4/7 层网络协议" | optional,
            ..
          },
      "definitions.Services" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.Service", { _ | Dyn } ]
          },
      "definitions.SharedDir" =
        {
            main | String | doc "主容器的目录" | optional,
            sidecar | String | doc "边车容器的目录" | optional,
            ..
          },
      "definitions.SideCar" =
        {
            cmd | String | doc "容器启动命令" | optional,
            envs
              | refs."definitions.EnvMap"
              | { _ | Dyn }
              | doc "容器环境变量"
              | optional,
            image | String | doc "容器镜像" | optional,
            resources
              | refs."definitions.Resources"
              | { _ | Dyn }
              | doc "容器资源"
              | optional,
            ..
          },
      "definitions.TrafficSecurity" =
        { mode | String | doc "流量安全策略模式" | optional, .. },
      "definitions.ValueMap" =
        {
            _ | std.contract.any_of [ String, std.number.Integer, Number, Bool ]
          },
      "definitions.ValueObjects" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "development|test|staging|production" =
                      std.contract.Sequence
                          [ refs."definitions.ValueMap", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.Volume" =
        {
            id | String | optional,
            path | String | optional,
            readOnly | Bool | optional,
            size | std.number.Integer | optional,
            snapshot
              | refs."definitions.VolumeSnapshot"
              | { _ | Dyn }
              | optional,
            storage | String | optional,
            targetPath | String | optional,
            type | String | optional,
            ..
          },
      "definitions.VolumeSnapshot" =
        { maxHistory | std.number.Integer | optional, .. },
      "definitions.Volumes" =
        Array (
            std.contract.Sequence [ refs."definitions.Volume", { _ | Dyn } ]
          ),
    }
    in
  std.contract.Sequence
      [
        js2n.record.DependentContracts
          {
            jobs =
              js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "services" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jobs" ],
                        Array Dyn
                      ]
                  ],
            services =
              js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "services" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "jobs" ],
                        Array Dyn
                      ]
                  ],
          },
        {
          "$schema" | String | optional,
          addons
            | refs."definitions.AddOns"
            | doc "定义服务所需的中间件, 中间件的相关变量以环境变量方式注入"
            | optional,
          environments
            | refs."definitions.EnvObjects"
            | doc "如果各环境有环境变量, Services, Addons 定义有差异, 可以在此处进行差异化定义"
            | optional,
          envs
            | refs."definitions.EnvMap"
            | doc "全局环境变量, 优先级低于 service 或 job 自身的环境变量"
            | optional,
          jobs
            | refs."definitions.Jobs"
            | doc "定义任务列表, 一个 dice.yml 不能同时定义 services 和 jobs"
            | optional,
          meta | { _ | String } | doc "dice.yml 的元数据" | optional,
          services
            | refs."definitions.Services"
            | doc "定义服务列表, 一个 dice.yml 不能同时定义 services 和 jobs"
            | optional,
          values
            | refs."definitions.ValueObjects"
            | doc "定义各环境的 key-values, 可以在其他字段的值中引用"
            | optional,
          version | String | doc "dice.yml 语法规范版本",
        }
      ]