# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.validationAbsoluteLinkValues" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'relative_to_docs, 'ignore, 'info, 'warn |]
            ],
      "definitions.validationValues" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ignore, 'info, 'warn |] ],
    }
    in
  {
      INHERIT
        | String
        | doc m%"
          Define the parent for a configuration file. The path must be relative to the location of the primary file.
          https://www.mkdocs.org/user-guide/configuration/#configuration-inheritance
        "%
        | optional,
      copyright
        | String
        | doc m%"
          Set the copyright information to be included in the documentation by the theme.
          https://www.mkdocs.org/user-guide/configuration/#copyright
        "%
        | optional,
      dev_addr
        | String
        | doc m%"
          Determines the address used when running mkdocs serve. Must be of the format IP:PORT.
          https://www.mkdocs.org/user-guide/configuration/#dev_addr
        "%
        | optional,
      docs_dir
        | String
        | doc m%"
          The directory containing the documentation source markdown files. This can either be a relative directory, in which case it is resolved relative to the directory containing your configuration file, or it can be an absolute directory path from the root of your local file system.
          https://www.mkdocs.org/user-guide/configuration/#docs_dir
        "%
        | optional,
      draft_docs
        | String
        | doc m%"
          This config defines patterns of files (under docs_dir) to be treated as a draft. Draft files are available during mkdocs serve and include a "DRAFT" mark but will not be included in the build. To prevent this effect and make "serve" behave the same as "build", you can run mkdocs serve --clean.
          https://www.mkdocs.org/user-guide/configuration/#draft_docs
        "%
        | optional,
      edit_uri
        | String
        | doc m%"
          The path from the base repo_url to the docs directory when directly viewing a page, accounting for specifics of the repository host (e.g. GitHub, Bitbucket, etc), the branch, and the docs directory itself.
          https://www.mkdocs.org/user-guide/configuration/#edit_uri
        "%
        | optional,
      edit_uri_template
        | String
        | doc m%"
          The more flexible variant of edit_uri.
          https://www.mkdocs.org/user-guide/configuration/#edit_uri_template
        "%
        | optional,
      exclude_docs
        | String
        | doc m%"
          This config defines patterns of files (under docs_dir) to not be picked up into the built site.
          https://www.mkdocs.org/user-guide/configuration/#exclude_docs
        "%
        | optional,
      extra
        | { _ | Dyn }
        | doc m%"
          A set of key-value pairs, where the values can be any valid YAML construct, that will be passed to the template. This allows for great flexibility when creating custom themes.
          https://www.mkdocs.org/user-guide/configuration/#extra
        "%
        | optional,
      extra_css
        | Array String
        | doc m%"
          Set a list of CSS files (relative to docs_dir) to be included by the theme, typically as <link> tags.
          https://www.mkdocs.org/user-guide/configuration/#extra_css
        "%
        | optional,
      extra_javascript
        | Array (
          std.contract.any_of
            [
              String,
              {
                async | Bool | optional,
                defer | Bool | optional,
                path | String,
                type | String | optional,
                ..
              }
            ]
        )
        | doc m%"
          Set a list of JavaScript files in your docs_dir to be included by the theme, as <script> tags.
          https://www.mkdocs.org/user-guide/configuration/#extra_javascript
        "%
        | optional,
      extra_templates
        | Array String
        | doc m%"
          Set a list of templates in your docs_dir to be built by MkDocs. To see more about writing templates for MkDocs read the documentation about [custom themes] and specifically the section about the [available variables] to templates. See the example in extra_css for usage.
          https://www.mkdocs.org/user-guide/configuration/#extra_templates
        "%
        | optional,
      hooks
        | Array Dyn
        | doc m%"
          A list of paths to Python scripts (relative to mkdocs.yml) that are loaded and used as plugin instances.
          https://www.mkdocs.org/user-guide/configuration/#hooks
        "%
        | optional,
      markdown_extensions
        | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
        | doc m%"
          This setting lets you enable a list of extensions beyond the ones that MkDocs uses by default (meta, toc, tables, and fenced_code).
          https://www.mkdocs.org/user-guide/configuration/#markdown_extensions
        "%
        | optional,
      nav
        | Array (std.contract.any_of [ { _ | Dyn }, String ])
        | doc m%"
          This setting is used to determine the format and layout of the global navigation for the site.
          https://www.mkdocs.org/user-guide/configuration/#nav
        "%
        | optional,
      not_in_nav
        | String
        | doc m%"
          If you want to include some docs into the site but intentionally exclude them from the nav, normally MkDocs warns about this.
          https://www.mkdocs.org/user-guide/configuration/#not_in_nav
        "%
        | optional,
      plugins
        | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
        | doc m%"
          A list of plugins (with optional configuration settings) to use when building the site. See the Plugins documentation for full details.
          https://www.mkdocs.org/user-guide/configuration/#plugins
        "%
        | optional,
      remote_branch
        | String
        | doc m%"
          Set the remote branch to commit to when using gh-deploy to deploy to GitHub Pages. This option can be overridden by a command line option in gh-deploy.
          https://www.mkdocs.org/user-guide/configuration/#remote_branch
        "%
        | optional,
      remote_name
        | String
        | doc m%"
          Set the remote name to push to when using gh-deploy to deploy to GitHub Pages. This option can be overridden by a command line option in gh-deploy.
          https://www.mkdocs.org/user-guide/configuration/#remote_name
        "%
        | optional,
      repo_name
        | String
        | doc m%"
          When set, provides the name for the link to your repository on each page.
          https://www.mkdocs.org/user-guide/configuration/#repo_name
        "%
        | optional,
      repo_url
        | String
        | doc m%"
          When set, provides a link to your repository (GitHub, Bitbucket, GitLab, ...) on each page.
          https://www.mkdocs.org/user-guide/configuration/#repo_url
        "%
        | optional,
      site_author
        | String
        | doc m%"
          Set the name of the author. This will add a meta tag to the generated HTML header.
          https://www.mkdocs.org/user-guide/configuration/#site_author
        "%
        | optional,
      site_description
        | String
        | doc m%"
          Set the site description. This will add a meta tag to the generated HTML header.
          https://www.mkdocs.org/user-guide/configuration/#site_description
        "%
        | optional,
      site_dir
        | String
        | doc m%"
          The directory where the output HTML and other files are created. This can either be a relative directory, in which case it is resolved relative to the directory containing your configuration file, or it can be an absolute directory path from the root of your local file system.
          https://www.mkdocs.org/user-guide/configuration/#site_dir
        "%
        | optional,
      site_name
        | String
        | doc m%"
          This is a required setting, and should be a string that is used as the main title for the project documentation.
          https://www.mkdocs.org/user-guide/configuration/#site_name
        "%,
      site_url
        | String
        | doc m%"
          Set the canonical URL of the site. This will add a link tag with the canonical URL to the head section of each HTML page. If the 'root' of the MkDocs site will be within a subdirectory of a domain, be sure to include that subdirectory in the setting (https://example.com/foo/).
          https://www.mkdocs.org/user-guide/configuration/#site_url
        "%
        | optional,
      strict
        | Bool
        | doc m%"
          Determines how warnings are handled. Set to true to halt processing when a warning is raised. Set to false to print a warning and continue processing.
          https://www.mkdocs.org/user-guide/configuration/#strict
        "%
        | optional,
      theme
        | std.contract.any_of
          [
            {
              custom_dir
                | String
                | doc "A directory containing a custom theme. This can either be a relative directory, in which case it is resolved relative to the directory containing your configuration file or it can be an absolute directory path from the root of your local file system."
                | optional,
              locale
                | String
                | doc "A code representing the language of your site."
                | optional,
              name
                | js2n.Nullable String
                | doc "The string name of a known installed theme, or null if using a local custom theme."
                | optional,
              static_templates
                | Array Dyn
                | doc "A list of templates to render as static pages. The templates must be located in either the theme's template directory or in the custom_dir defined in the theme configuration."
                | optional,
              ..
            },
            String
          ]
        | doc m%"
          Sets the theme and theme specific configuration of your documentation site.
          https://www.mkdocs.org/user-guide/configuration/#theme
        "%
        | optional,
      use_directory_urls
        | Bool
        | doc m%"
          This setting controls the style used for linking to pages within the documentation.
          https://www.mkdocs.org/user-guide/configuration/#use_directory_urls
        "%
        | optional,
      validation
        | {
          absolute_links
            | refs."definitions.validationAbsoluteLinkValues"
            | optional,
          anchors | refs."definitions.validationValues" | optional,
          links
            | {
              absolute_links
                | refs."definitions.validationAbsoluteLinkValues"
                | optional,
              anchors | refs."definitions.validationValues" | optional,
              not_found | refs."definitions.validationValues" | optional,
              unrecognized_links
                | refs."definitions.validationValues"
                | optional,
              ..
            }
            | optional,
          nav
            | {
              absolute_links | refs."definitions.validationValues" | optional,
              not_found | refs."definitions.validationValues" | optional,
              omitted_files | refs."definitions.validationValues" | optional,
              ..
            }
            | optional,
          not_found | refs."definitions.validationValues" | optional,
          omitted_files | refs."definitions.validationValues" | optional,
          unrecognized_links | refs."definitions.validationValues" | optional,
          ..
        }
        | doc m%"
          Configure the strictness of MkDocs' diagnostic messages when validating links to documents.
          https://www.mkdocs.org/user-guide/configuration/#validation
        "%
        | optional,
      watch
        | Array String
        | doc m%"
          Determines additional directories to watch when running mkdocs serve.
          https://www.mkdocs.org/user-guide/configuration/#watch
        "%
        | optional,
      ..
    }