# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.tools" =
        {
            "404" | Bool | doc "Enable 404 detection" | optional,
            betagouv | Bool | doc "Enable betagouv API data" | optional,
            budget_page | Bool | doc "Enable budget page detection" | optional,
            codescan | Bool | doc "Enable codescan alerts" | optional,
            declaration-a11y
              | Bool
              | doc "Enable declaration a11y scan"
              | optional,
            declaration-rgpd
              | Bool
              | doc "Enable declaration RGPD scan"
              | optional,
            dependabot | Bool | doc "Enable dependabot alerts" | optional,
            dsfr | Bool | doc "Enable DSFR detection" | optional,
            ecoindex | Bool | doc "Enable ecoindex scan" | optional,
            github_repository
              | Bool
              | doc "Enable GitHub repository detection (from betagouv data)"
              | optional,
            http | Bool | doc "Enable Mozilla HTTP Observatory scan" | optional,
            lighthouse | Bool | doc "Enable Lighthouse" | optional,
            nmap | Bool | doc "Enable nmapvuln scan" | optional,
            nuclei | Bool | doc "Enable nuclei scan" | optional,
            screenshot | Bool | doc "Enable screenshots" | optional,
            sonarcloud | Bool | doc "Enable sonarcloud API results" | optional,
            stats | Bool | doc "Enable /stats page check" | optional,
            testssl | Bool | doc "Enable testssl.sh" | optional,
            thirdparties | Bool | doc "Enable thirdparties scan" | optional,
            trivy | Bool | doc "Enable trivy docker scans" | optional,
            updownio | Bool | doc "Enable updown.io metrics" | optional,
            wappalyzer | Bool | doc "Enable wappalyzer scan" | optional,
            zap | Bool | doc "Enable ZaProxy baseline scan" | optional,
          },
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^_.*" =
                std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            },
        properties =
          {
              columns = refs."definitions.tools",
              description = String,
              entity = String,
              footer = String,
              loginUrl = String,
              marianne = Bool,
              matomoId = Number,
              matomoUrl = String,
              operator =
                {
                    logo
                      | std.contract.any_of
                        [
                          String,
                          {
                            direction
                              | std.enum.TagOrString
                              | [| 'vertical, 'horizontal |]
                              | optional,
                            src | String,
                            ..
                          }
                        ],
                    name | String,
                    ..
                  },
              title = String,
              tools = refs."definitions.tools",
              updownioRecipients = Array String,
              updownioStatusPage = String,
              urls =
                Array
                    {
                      betaId | String | optional,
                      category | String | optional,
                      docker
                        | Array String
                        | doc "Docker images to scan"
                        | optional,
                      pages
                        | Array String
                        | doc "Additionnal URLs to scan with LightHouse"
                        | optional,
                      repositories
                        | Array String
                        | doc "Repositories no GitHub"
                        | optional,
                      tags | Array String | optional,
                      title | String | optional,
                      tools | refs."definitions.tools" | optional,
                      url | String,
                    },
            },
        required =
          {
              description = true,
              entity = true,
              title = true,
              tools = true,
              urls = true,
            },
      }