# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      allowed_redirect_uris
        | js2n.Nullable (Array (js2n.string.Matches "^https?://.*/.+"))
        | doc "A list of allowed urls to which the user can be redirected upon successful install of this app. Read about using allowed redirect urls: https://stripe.com/docs/stripe-apps/reference/app-manifest#allowed-redirect-urls"
        | optional,
      constants
        | js2n.Nullable ({ _ | Dyn })
        | doc "Custom values that are passed through to your views via context props. Read about context props: https://stripe.com/docs/stripe-apps/reference/extensions-sdk-api#props"
        | optional,
      distribution_type
        | std.enum.TagOrString
        | [| 'private, 'public |]
        | doc "Stripe Apps gives you two ways to distribute your apps. You can make them publicly available or privately share them only with your team members. Read about Distribution Type: https://stripe.com/docs/stripe-apps/reference/app-manifest#distribution-type"
        | optional,
      icon
        | js2n.string.Matches
          "^$|^\\./((\\.\\./|[a-zA-Z0-9_/\\-\\\\])[^\\.\\.]*\\.png)$"
        | doc "The relative path to a 300x300 pixel PNG image, for example \"./icon.png\".",
      id
        | js2n.string.Matches "^[a-zA-Z0-9_\\-\\.]+$"
        | doc "The unique identifier for an app, for example \"com.invoicing.myapp\".",
      name
        | js2n.string.MinLength 1
        | doc "The name shown in the UI when referring to your app.",
      permissions
        | Array
          {
            permission
              | std.enum.TagOrString
              | [|
                'webhook_write,
                'webhook_read,
                'user_email_read,
                'usage_record_write,
                'usage_record_read,
                'transfer_write,
                'transfer_read,
                'top_up_write,
                'top_up_read,
                'token_write,
                'token_read,
                'tax_rate_write,
                'tax_rate_read,
                'subscription_write,
                'subscription_read,
                'stripecli_session_write,
                'source_write,
                'source_read,
                'sku_write,
                'sku_read,
                'shpping_rate_write,
                'shipping_rate_read,
                'setup_intent_write,
                'setup_intent_read,
                'secret_write,
                'report_runs_and_report_types_read,
                'quote_write,
                'quote_read,
                'product_write,
                'product_read,
                'plan_write,
                'plan_read,
                'payout_write,
                'payout_read,
                'payment_method_write,
                'payment_method_read,
                'payment_links_write,
                'payment_links_read,
                'payment_intent_write,
                'payment_intent_read,
                'order_write,
                'order_read,
                'mandate_write,
                'mandate_read,
                'issuing_transaction_write,
                'issuing_transaction_read,
                'issuing_dispute_write,
                'issuing_dispute_read,
                'issuing_cardholder_write,
                'issuing_cardholder_read,
                'issuing_card_write,
                'issuing_card_read,
                'issuing_authorization_write,
                'issuing_authorization_read,
                'invoice_write,
                'invoice_read,
                'file_write,
                'file_read,
                'event_read,
                'elements_write,
                'edit_link_write,
                'dispute_write,
                'dispute_read,
                'customer_write,
                'customer_read,
                'customer_portal_write,
                'customer_portal_read,
                'credit_note_write,
                'credit_note_read,
                'coupon_write,
                'coupon_read,
                'connected_account_read,
                'checkout_session_write,
                'checkout_session_read,
                'charge_write,
                'charge_read,
                'capital_for_platforms_financing_offer_read,
                'billing_clock_write,
                'billing_clock_read,
                'balance_transaction_source_read,
                'balance_read,
                'apply_pay_domain_write,
                'apply_pay_domain_read,
                'application_fee_write,
                'application_fee_read,
                'account_link_write
              |]
              | doc "The ID of the permission. Read more about permissions: https://stripe.com/docs/stripe-apps/reference/permissions",
            purpose
              | js2n.string.MinLength 1
              | doc "The reason for requesting the permission.",
          }
        | doc "The permissions available to the app. Read more about permissions: https://stripe.com/docs/stripe-apps/reference/permissions",
      post_install_action
        | js2n.OneOf
          [
            js2n.Null,
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties = { type = js2n.Const "settings", },
                required = { type = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      type = js2n.Const "external",
                      url = js2n.string.Matches "^https?://",
                    },
                required = { type = true, url = true, },
              }
          ]
        | doc "Specify a recommended action for users to take after installing your app. Read more about post-install actions: https://stripe.com/docs/stripe-apps/post-install-actions"
        | optional,
      sandbox_install_compatible
        | Bool
        | doc "A property that when set to true will allow your app to be installable into a sandbox. Read more about enabling Sandbox support: https://docs.stripe.com/stripe-apps/enable-sandbox-support"
        | optional,
      stripe_api_access_type
        | std.enum.TagOrString
        | [| 'platform, 'oauth, 'restricted_api_key |]
        | doc "A property that describes how your application calls Stripe API. Read about using stripe api access type: https://stripe.com/docs/stripe-apps/reference/app-manifest#stripe-api-access-type"
        | optional,
      ui_extension
        | {
          content_security_policy
            | {
              connect-src
                | js2n.Nullable (Array (js2n.string.Matches "^https?://.*/.+"))
                | doc "URLs of permitted third-party APIs. If the URL ends in a slash, all of its children also receive permission. Read about using third-party APIs: https://stripe.com/docs/stripe-apps/build-ui#use-third-party-apis"
                | optional,
              image-src
                | js2n.Nullable (Array (js2n.string.Matches "^https?://.+"))
                | doc "URLs the Img component (https://stripe.com/stripe-apps/ui-toolkit/components/img) can load from. If the URL ends in a slash, all trailing paths are also permitted."
                | optional,
              purpose
                | String
                | doc "A message to show users when the app is installed that explains why the app needs to communicate with external URLs.",
              ..
            }
            | doc "Configure the content security policy for your app."
            | optional,
          views
            | Array
              {
                component
                  | js2n.string.Matches "^[a-zA-Z0-9_]{1,}$"
                  | doc "The name of the React component in the \"src/views\" directory to render.",
                viewport
                  | std.enum.TagOrString
                  | [|
                    '"stripe.dashboard.tax-report.overview",
                    '"stripe.dashboard.subscription.list",
                    '"stripe.dashboard.subscription.detail",
                    '"stripe.dashboard.revenue-recognition.overview",
                    '"stripe.dashboard.report.overview",
                    '"stripe.dashboard.product.list",
                    '"stripe.dashboard.product.detail",
                    '"stripe.dashboard.payment.list",
                    '"stripe.dashboard.payment.detail",
                    '"stripe.dashboard.payment-link.list",
                    '"stripe.dashboard.payment-link.detail",
                    '"stripe.dashboard.invoice.list",
                    '"stripe.dashboard.invoice.detail",
                    '"stripe.dashboard.home.overview",
                    '"stripe.dashboard.drawer.default",
                    '"stripe.dashboard.customer.list",
                    '"stripe.dashboard.customer.detail",
                    '"stripe.dashboard.billing.overview",
                    '"stripe.dashboard.balance.overview",
                    'settings
                  |]
                  | doc "An identifier that indicates where a UI extension appears in the Dashboard. Read more about viewports: https://stripe.com/docs/stripe-apps/reference/viewports",
                ..
              }
            | doc "Configure where the app appears in the Dashboard."
            | optional,
          ..
        }
        | doc "Configuration options for how to display the app in the Dashboard.",
      version
        | js2n.string.MinLength 1
        | doc "An app version that you define. You can use any format you want for version identifiers.",
    }