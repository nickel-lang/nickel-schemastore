# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        apiKey | String | doc "API key for service authentication" | optional,
        apiVersion | String | doc "API version for Azure services" | optional,
        authKey
          | String
          | doc "Authentication key for services like DeepL"
          | optional,
        defaultBehavior
          | String
          | doc "Default behavior (system prompt) for actions"
          | optional,
        deploymentId
          | String
          | doc "Deployment ID for Azure OpenAI services"
          | optional,
        endpoint | String | doc "Service endpoint URL" | optional,
        model | String | doc "Model identifier for AI services" | optional,
        options
          | {
            max_tokens
              | std.number.Integer
              | doc "Maximum number of tokens to generate"
              | optional,
            model | String | doc "Alternative model specification" | optional,
            temperature
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Temperature parameter for text generation"
              | optional,
            top_p
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc "Top-p parameter for text generation"
              | optional,
            ..
          }
          | doc "Additional service-specific options"
          | optional,
        target | String | doc "Service target identifier" | optional,
        ..
      }
    }