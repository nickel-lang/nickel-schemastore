# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.app-center-releases" =
        Array
            {
              app-id | js2n.string.Matches "[a-zA-Z0-9_-]+" | doc "App ID",
              tags
                | Array (js2n.string.Matches "[a-zA-Z0-9_-]+")
                | doc "릴리즈 그룹에 대한 Tag들을 지정"
                | optional,
            },
      "definitions.build-condition" =
        {
            manual
              | {
                branches
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "수동빌드의 대상이 되는 브랜치 조건"
                  | optional,
                tags
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "수동빌드의 대상이 되는 태그 조건"
                  | optional,
              }
              | doc "수동빌드 대상을 위한 조건"
              | optional,
            pull-request
              | js2n.record.DependentFields { paths = [ "branches" ], }
              | {
                branches
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "PR빌드의 target 브랜치 조건"
                  | optional,
                paths
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "PullRequest 빌드의 paths 조건"
                  | optional,
                types
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'auto_merge_disabled,
                          'auto_merge_enabled,
                          'review_request_removed,
                          'review_requested,
                          'unlocked,
                          'locked,
                          'ready_for_review,
                          'converted_to_draft,
                          'synchronize,
                          'reopened,
                          'closed,
                          'edited,
                          'opened,
                          'unlabeled,
                          'labeled,
                          'unassigned,
                          'assigned
                        |]
                      ]
                  )
                  | doc "PR 이벤트 타입"
                  | optional,
              }
              | doc "PullRequest 이벤트에 의한 조건"
              | optional,
            push
              | js2n.record.DependentFields { paths = [ "branches" ], }
              | {
                branches
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "Push 빌드의 branch 조건"
                  | optional,
                commit
                  | {
                    message-contain
                      | String
                      | doc "commit message에 주어진 문자열을 포함한 경우만 빌드"
                      | optional,
                    ..
                  }
                  | optional,
                paths
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "Push 빌드의 paths 조건"
                  | optional,
                tags
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "Push 빌드의 tag 조건"
                  | optional,
              }
              | doc "Push 이벤트에 의한 조건"
              | optional,
            schedule
              | {
                branches
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "스케줄 빌드의 branch 조건",
                build-if-changed | Bool | doc "변경된 파일이 있을때만 빌드" | optional,
                cron | String | doc "cron 표현식. unix 표현식과 quartz 표현식 사용가능",
                zone | String | doc "스케줄 빌드 zone" | optional,
              }
              | doc "스케줄에 의한 조건"
              | optional,
            ..
          },
      "definitions.env" =
        {
            branch | String | doc "환경변수를 적용할 브랜치" | optional,
            name | js2n.string.Matches "[a-zA-Z_][a-zA-Z_0-9]*" | doc "환경변수 이름",
            value | String | doc "환경변수 값",
          },
      "definitions.git-ops" =
        {
            manifest
              | {
                branch | js2n.string.Matches "[a-zA-Z0-9/_.@-]+" | doc "branch",
                repo
                  | js2n.string.Matches "[.a-zA-Z0-9_-]+/[.a-zA-Z0-9_-]+"
                  | doc "repo('owner/repo')",
              }
              | doc "K8S manifest repo 정보",
            sync-git-tag
              | Bool
              | doc "manifest repo에 git tag를 동기화할지 여부. push tag 빌드일때만 동작"
              | optional,
            update
              | js2n.array.MinItems 1
              | Array String
              | doc "manifest repo를 업데이트하기 위한 명령",
            with-artifacts
              | Array String
              | doc "빌드 작업에서 manifest reop로 전달할 artifacts"
              | optional,
          },
      "definitions.job" =
        {
            artifacts
              | Array String
              | doc "artifact로 지정할 파일 혹은 디렉토리 경로"
              | optional,
            caches
              | Array
                {
                  download | Bool | doc "캐시 다운로드 여부" | optional,
                  key
                    | js2n.string.Matches "^[a-zA-Z0-9_-]{1,40}$"
                    | doc "캐시 식별키 (repo scope)",
                  path | String | doc "캐시할 파일 혹은 디렉토리 경로",
                  upload | Bool | doc "캐시 업로드 여부" | optional,
                }
              | doc "다음 빌드의 속도 향상을 위한 캐시 설정"
              | optional,
            execute
              | js2n.array.MinItems 1
              | Array String
              | doc "실행할 명령 목록(순차실행)",
            git-clone
              | js2n.string.Matches "^(shallow|deep|shallow:[0-9]+)$"
              | doc "git clone시 depth를 주기위한 옵션"
              | optional,
            html-reports
              | Array
                {
                  name | js2n.string.Matches "[a-zA-Z0-9_-]+" | doc "report 이름",
                  path | String | doc "report 경로. html 확장자만 지정 가능",
                }
              | doc "html report 설정. path 경로의 html 파일을 업로드"
              | optional,
            max-execution-time
              | js2n.string.Matches "^([0-9]+)(h|m)$"
              | doc "최대 실행시간 (e.g. '1h', '100m')"
              | optional,
            name | js2n.string.Matches "[a-zA-Z0-9_-]{1,40}" | doc "작업 이름",
            no-proxy-hosts
              | Array String
              | doc "proxy 예외할 host 목록 (ip, ip/mask, domain)"
              | optional,
            post-process
              | {
                app-center-releases
                  | refs."definitions.app-center-releases"
                  | Array Dyn
                  | optional,
                git-ops | refs."definitions.git-ops" | { _ | Dyn } | optional,
                ..
              }
              | doc "빌드 후처리기 설정"
              | optional,
            run-on | refs."definitions.run-on" | { _ | Dyn } | optional,
            set-proxy
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'sbt,
                      'java,
                      'maven,
                      'yarn,
                      'docker,
                      'npm,
                      'gradle,
                      'shell
                    |]
                  ]
              )
              | doc "사내 Proxy 설정"
              | optional,
            ..
          },
      "definitions.run-on" =
        {
            image
              | js2n.string.Matches
                "^(\\+@[a-z0-9-]+|\\+\\/[a-z0-9/-]+|[a-z0-9/._-]+)(:[a-z0-9A-Z._-]+)?$"
              | doc "docker image"
              | optional,
            platform
              | std.enum.TagOrString
              | [| 'macos, 'k8s |]
              | doc "실행환경 플랫폼"
              | optional,
            resources
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'xxxlarge,
                        'xxlarge,
                        'xlarge,
                        'large,
                        'medium,
                        'small
                      |]
                    ],
                  {
                    cpu
                      | std.contract.any_of
                        [ js2n.string.Matches "^[0-9]+(\\.[0-9]+)?$", Number ]
                      | doc "cpu (e.g. '1.0')",
                    memory
                      | js2n.string.Matches "^([0-9]+)(Mi|Gi)$"
                      | doc "memory (e.g. '500Mi', '2Gi').",
                    ..
                  }
                ]
              | doc "실행에 사용할 리소스 크기 설정"
              | optional,
            selectors
              | Array
                {
                  name | String | doc "agent label 값",
                  pattern
                    | String
                    | doc "agent value를 pattern 으로 지정"
                    | optional,
                  ..
                }
              | doc "platform: macos 일때 사용할 agent를 선택"
              | optional,
            use
              | Array (std.contract.Equal "docker")
              | doc "실행환경에서 사용할 기능 설정"
              | optional,
          },
    }
    in
  {
      environment | Array refs."definitions.env" | doc "환경변수" | optional,
      jobs | Array refs."definitions.job" | doc "실행할 작업들: 독립적으로 병렬 실행됨",
      on | refs."definitions.build-condition" | doc "실행 조건" | optional,
    }