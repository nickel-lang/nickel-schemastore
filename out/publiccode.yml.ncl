# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Contact" =
        {
            affiliation
              | String
              | doc "This key contains an explicit affiliation information for the technical contact. In case of multiple maintainers, this can be used to create a relation between each technical contact and each maintainer entity. It can contain for instance a company name, an association name, etc."
              | optional,
            email
              | String
              | doc "This key contains the e-mail address of the technical contact. It must be an email address of where the technical contact can be directly reached; do NOT populate this key with mailing-lists or generic contact points like \"info@acme.inc\". The e-mail address must not be obfuscated. To improve resistance against e-mail collection, use \\x64 to replace @, as allowed by the YAML specification."
              | optional,
            name
              | String
              | doc "This key contains the full name of one of the technical contacts. It must be a real person; do NOT populate this key with generic contact information, company departments, associations, etc.",
            phone
              | String
              | doc "phone number (with international prefix). This has to be a string."
              | optional,
          },
      "definitions.Contractor" =
        {
            email
              | String
              | doc "This key contains the e-mail address of the technical contact. It must be an email address of where the technical contact can be directly reached; do NOT populate this key with mailing-lists or generic contact points like \"info@acme.inc\". The e-mail address must not be obfuscated. To improve resistance against e-mail collection, use \\x64 to replace @, as allowed by the YAML specification."
              | optional,
            name
              | String
              | doc "The name of the contractor, whether it's a company or a physical person.",
            until
              | String
              | doc "This is a date (YYYY-MM-DD). This key must contain the date at which the maintenance is going to end. In case of community maintenance, the value should not be more than 2 years in the future, and thus will need to be regularly updated as the community continues working on the project.",
            website
              | String
              | doc "This key points to the maintainer website. It can either point to the main institutional website, or to a more project-specific page or website."
              | optional,
          },
      "definitions.Dependency" =
        {
            name
              | String
              | doc "The name of the dependency (e.g. MySQL, NFC Reader)",
            "optional"
              | Bool
              | doc "Whether the dependency is optional or mandatory"
              | optional,
            version
              | std.contract.any_of [ Number, String ]
              | doc "The only major version for which the software is compatible. It assumes compatibility with all patches and bugfixes later applied to this version."
              | optional,
            versionMax
              | std.contract.any_of [ Number, String ]
              | doc "The latest compatible version"
              | optional,
            versionMin
              | std.contract.any_of [ Number, String ]
              | doc "The first compatible version"
              | optional,
          },
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              {
                countryExtensionVersion
                  | String
                  | doc m%"
                    This key specifies the version to which the current extension schema adheres to, for forward compatibility.
                    
                    Please note how the value of this key is independent from the top-level publiccodeYmlVersion one (see The Standard (core)). In such a way, the extensions schema versioning is independent both from the core version of the schema and from every other Country.
                  "%,
                ..
              },
        patterns = {},
        properties =
          {
              applicationSuite = String,
              categories =
                Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'workflow-management,
                          'whistleblowing,
                          'website-builder,
                          'web-conferencing,
                          'web-collaboration,
                          'warehouse-management,
                          'voip,
                          'visitor-management,
                          'video-editing,
                          'video-conferencing,
                          'translation,
                          'time-tracking,
                          'time-management,
                          'test-management,
                          'taxes-management,
                          'task-management,
                          'talent-management,
                          'survey,
                          'social-media-management,
                          'service-desk,
                          'seo,
                          'sales-management,
                          'resource-management,
                          'remote-support,
                          'regulations-and-directives,
                          'real-estate-management,
                          'property-management,
                          'project-management,
                          'project-collaboration,
                          'productivity-suite,
                          'procurement,
                          'predictive-analysis,
                          'payroll,
                          'payment-gateway,
                          'online-community,
                          'online-booking,
                          'office,
                          'network-management,
                          'mobile-payment,
                          'mobile-marketing,
                          'mind-mapping,
                          'marketing,
                          'learning-management-system,
                          'knowledge-management,
                          'it-service-management,
                          'it-security,
                          'it-management,
                          'it-development,
                          'it-asset-management,
                          'inventory-management,
                          'integrated-library-system,
                          'instant-messaging,
                          'identity-management,
                          'ide,
                          'hr,
                          'help-desk,
                          'graphic-design,
                          'grant-management,
                          'geographic-information-systems,
                          'gamification,
                          'fundraising,
                          'fleet-management,
                          'financial-reporting,
                          'feedback-and-reviews-management,
                          'facility-management,
                          'event-management,
                          'erp,
                          'enterprise-social-networking,
                          'enterprise-project-management,
                          'employee-management,
                          'email-marketing,
                          'email-management,
                          'educational-content,
                          'e-signature,
                          'e-commerce,
                          'donor-management,
                          'document-management,
                          'digital-citizenship,
                          'digital-asset-management,
                          'design-system,
                          'design,
                          'data-visualization,
                          'data-collection,
                          'data-analytics,
                          'customer-service-and-support,
                          'crm,
                          'content-management,
                          'contact-management,
                          'compliance-management,
                          'communications,
                          'collaboration,
                          'cloud-management,
                          'call-center-management,
                          'cad,
                          'business-process-management,
                          'business-intelligence,
                          'budgeting,
                          'blog,
                          'billing-and-invoicing,
                          'backup,
                          'appointment-scheduling,
                          'application-development,
                          'applicant-tracking,
                          'agile-project-management,
                          'accounting
                        |]
                      ]
                  ),
              dependsOn =
                {
                    hardware
                      | Array refs."definitions.Dependency"
                      | doc "This key contains a list of hardware dependencies that must be owned to use the software."
                      | optional,
                    open
                      | Array refs."definitions.Dependency"
                      | doc "This key contains a list of runtime dependencies that are distributed under an open-source license."
                      | optional,
                    proprietary
                      | Array refs."definitions.Dependency"
                      | doc "This key contains a list of runtime dependencies that are distributed under a proprietary license."
                      | optional,
                  },
              description =
                {
                    _ | {
                      apiDocumentation
                        | String
                        | doc m%"
                          This key contains a reference to the API documentation of the software. The value must be a URL to a hosted version of the documentation.
                          
                          It is suggested that the URL points to a hosted version of the documentation that is immediately readable through a common web browser. The documentation should be rendered in HTML and browsable like a website (with a navigation index, a search bar, etc.), and if there is a reference or test deployment, possibly offer an interactive interface (e.g. Swagger).
                          
                          If the documentation is instead available only as a document, put a direct view/download link as URL in this key. You should commit the document as part of the source code repository, and then link to it using the code hosting source browser URL (e.g.: GitHub URL to the file). Prefer using open formats like PDF or ODT for maximum interoperability.
                          
                          Whichever the format for the documentation, remember to make its source files available under an open license, possibly by committing them as part of the repository itself.
                        "%
                        | optional,
                      awards
                        | Array String
                        | doc "A list of awards won by the software."
                        | optional,
                      documentation
                        | String
                        | doc m%"
                          This key contains a reference to the user-level (not developer-level) documentation of the software. The value must be a URL to a hosted version of the documentation.
                          
                          It is suggested that the URL points to a hosted version of the documentation that is immediately readable through a common web browser in both desktop and mobile format. The documentation should be rendered in HTML and browsable like a website (with a navigation index, a search bar, etc.).
                          
                          If the documentation is instead available only as a document, put a direct view/download link as URL in this key. You should commit the document as part of the source code repository, and then link to it using the code hosting source browser URL (e.g.: GitHub URL to the file). Prefer using open formats like PDF or ODT for maximum interoperability.
                          
                          Whichever the format for the documentation, remember to make its source files available under an open license, possibly by committing them as part of the repository itself.
                        "%
                        | optional,
                      features
                        | Array String
                        | doc m%"
                          This key contains a list of software features, describing what capabilities the software allows to do. The audience for this text should be that of public decision makers who will be commissioning the software. The features should thus not target developers; instead of listing technical features referring to implementation details, prefer listing user-visible functionalities of the software.
                          
                          While the key is mandatory, there is no mandatory minimum or maximum number of features that should be listed in this key. Each feature must use a maximum of 100 characters.
                          
                          The suggested number of features to list is between 5 and 20, depending on the software size and complexity. There is no need for exhaustiveness, as users can always read the documentation for additional information.
                        "%
                        | optional,
                      genericName
                        | js2n.string.MaxLength 35
                        | doc "This key is the \"Generic name\", which refers to the specific category to which the software belongs. You can usually find the generic name in the presentation of the software, when you write: \"Software xxx is a yyy\". Notable examples include \"Text Editor\", \"Word Processor\", \"Web Browser\", \"Chat\" and so on… The generic name can be up to 35 characters long."
                        | optional,
                      localisedName
                        | String
                        | doc "This key is an opportunity to localise the name in a specific language. It contains the (short) public name of the product. It should be the name most people usually refer to the software. In case the software has both an internal \"code\" name and a commercial name, use the commercial name."
                        | optional,
                      longDescription
                        | js2n.string.MaxLength 10000
                        | js2n.string.MinLength 150
                        | doc m%"
                          This key contains a longer description of the software, between 500 and 10000 chars. It is meant to provide an overview of the capabilities of the software for a potential user. The audience for this text should be that of users of the software, not developers. You can think of this text as the description of the software that would be in its website (if the software had one).
                          
                          This description can contain some basic markdown: *italic*, **bold**, bullet points and [links](#).
                        "%
                        | optional,
                      screenshots
                        | Array String
                        | doc "This key contains one or multiple paths to files showing screenshots of the software. They are meant to give a quick idea on how the software looks like and how it works. The key value can be the relative path to the file starting from the root of the repository, or it can be an absolute URL pointing to the screenshot in raw version. In both cases, the file must reside inside the same repository where the publiccode.yml file is stored."
                        | optional,
                      shortDescription
                        | js2n.string.MaxLength 150
                        | doc "This key contains a short description of the software. It should be a single line containing a single sentence. Maximum 150 characters are allowed.",
                      videos
                        | Array String
                        | doc m%"
                          This key contains one or multiple URLs of videos showing how the software works. Like screenshots, videos should be used to give a quick overview on how the software looks like and how it works. Videos must be hosted on a video sharing website that supports the oEmbed standard; popular options are YouTube and Vimeo.
                          
                          Since videos are an integral part of the documentation, it is recommended to publish them with an open license.
                        "%
                        | optional,
                    }
                  },
              developmentStatus =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'obsolete, 'stable, 'beta, 'development, 'concept |]
                    ],
              inputTypes = Array String,
              intendedAudience =
                {
                    countries
                      | Array String
                      | doc "This key explicitly includes certain countries in the intended audience, i.e. the software explicitly claims compliance with specific processes, technologies or laws. All countries are specified using lowercase ISO 3166-1 alpha-2 two-letter country codes."
                      | optional,
                    scope
                      | Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'welfare,
                              'transportation,
                              'tourism,
                              'sport,
                              'society,
                              'security,
                              'science-and-technology,
                              'research,
                              'manufacturing,
                              'local-authorities,
                              'justice,
                              'infrastructures,
                              'healthcare,
                              'government,
                              'foreign-affairs,
                              'finance-and-economic-development,
                              'environment,
                              'energy,
                              'employment,
                              'emergency-services,
                              'education,
                              'defence,
                              'culture,
                              'agriculture
                            |]
                          ]
                      )
                      | doc "This key contains a list of tags related to the field of application of the software."
                      | optional,
                    unsupportedCountries
                      | Array String
                      | doc "This key explicitly marks countries as NOT supported. This might be the case if there is a conflict between how software is working and a specific law, process or technology. All countries are specified using lowercase ISO 3166-1 alpha-2 two-letter country codes."
                      | optional,
                  },
              isBasedOn = std.contract.any_of [ String, Array String ],
              it =
                {
                    conforme
                      | {
                        gdpr
                          | Bool
                          | doc "If present and set to true, the software is compliant with the Misure minime di sicurezza ICT per le Pubbliche amministrazioni (Italian language)."
                          | optional,
                        lineeGuidaDesign
                          | Bool
                          | doc "If present and set to true, the software is compliant with the Italian accessibility laws (L. 4/2004), as further explained in the linee guida di design (Italian language)."
                          | optional,
                        misureMinimeSicurezza
                          | Bool
                          | doc "If present and set to true, the software is compliant with the Misure minime di sicurezza ICT per le Pubbliche amministrazioni (Italian language)."
                          | optional,
                        modelloInteroperabilita
                          | Bool
                          | doc m%"
                            If present and set to true, the software is compliant with the linee guida sull'interoperabilità.
                            
                            Regulatory reference: Art. 73 del CAD (Italian language).
                          "%
                          | optional,
                      }
                      | doc "This section contains the keys for auto-declaring the compliance with the current legislation, with respect to the following sections. Not including these keys implies that the compliance is not known or not declared."
                      | optional,
                    countryExtensionVersion
                      | String
                      | doc m%"
                        This key specifies the version to which the current extension schema adheres to, for forward compatibility.
                        
                        Please note how the value of this key is independent from the top-level publiccodeYmlVersion one (see The Standard (core)). In such a way, the extensions schema versioning is independent both from the core version of the schema and from every other Country.
                      "%,
                    piattaforme
                      | {
                        anpr
                          | Bool
                          | doc "If present and set to true, the software interfaces with ANPR."
                          | optional,
                        cie
                          | Bool
                          | doc "If present and set to true, the software interfaces with the Italian electronic ID card (Carta di Identità Elettronica)."
                          | optional,
                        io
                          | Bool
                          | doc "If present and set to true, the software interfaces with IO app (https://io.italia.it) "
                          | optional,
                        pagopa
                          | Bool
                          | doc "If present and set to true, the software interfaces with pagoPA."
                          | optional,
                        spid
                          | Bool
                          | doc "If present and set to true, the software interfaces with SPID - il Sistema Pubblico di Identità Digitale."
                          | optional,
                      }
                      | optional,
                    riuso
                      | {
                        codiceIPA
                          | String
                          | doc "This key represents the administration code inside the Public Administration index (codice IPA)."
                          | optional,
                      }
                      | optional,
                  },
              landingURL = String,
              legal =
                {
                    authorsFile
                      | String
                      | doc "Some open-source software adopt a convention of identify the copyright holders through a file that lists all the entities that own the copyright. This is common in projects strongly backed by a community where there are many external contributors and no clear single/main copyright owner. In such cases, this key can be used to refer to the authors file, using a path relative to the root of the repository."
                      | optional,
                    license
                      | String
                      | doc "This string describes the license under which the software is distributed. The string must contain a valid SPDX expression, referring to one (or multiple) open-source license. Please refer to the SPDX documentation for further information.",
                    mainCopyrightOwner
                      | String
                      | doc m%"
                        This string describes the entity that owns the copyright on "most" of the code in the repository. Normally, this is the line that is reported with the copyright symbol at the top of most files in the repo.
                        
                        It is possible to list multiple owners if required so, using an English sentence. It is also possible to informally refer to a community of group of people like "Linus Torvalds and all Linux contributors".
                        
                        In case it is not possible to name a main copyright owner, it is possible to omit this key; in those cases, if the repo has a authors file, you can point to it through legal/authorsFile.
                      "%
                      | optional,
                    repoOwner
                      | String
                      | doc "This string describes the entity that owns this repository; this might or might not be the same entity who owns the copyright on the code itself. For instance, in case of a fork of the original software, the repoOwner is probably different from the mainCopyrightOwner."
                      | optional,
                  },
              localisation =
                {
                    availableLanguages
                      | Array String
                      | doc "If present, this is the list of languages in which the software is available. Of course, this list will contain at least one language. The primary language subtag cannot be omitted, as mandated by the BCP 47.",
                    localisationReady
                      | Bool
                      | doc "If yes, the software has infrastructure in place or is otherwise designed to be multilingual. It does not need to be available in more than one language.",
                  },
              logo = String,
              maintenance =
                {
                    contacts
                      | Array refs."definitions.Contact"
                      | doc m%"
                        One or more contacts maintaining this software.
                        
                        This key describes the technical people currently responsible for maintaining the software. All contacts need to be a physical person, not a company or an organisation. If somebody is acting as a representative of an institution, it must be listed within the affiliation of the contact.
                        
                        In case of a commercial agreement (or a chain of such agreements), specify the final entities actually contracted to deliver the maintenance. Do not specify the software owner unless it is technically involved with the maintenance of the product as well.
                      "%
                      | optional,
                    contractors
                      | Array refs."definitions.Contractor"
                      | doc "This key describes the entity or entities, if any, that are currently contracted for maintaining the software. They can be companies, organizations, or other collective names."
                      | optional,
                    type
                      | std.enum.TagOrString
                      | [| 'none, 'community, 'contract, 'internal |]
                      | doc "This key describes how the software is currently maintained.",
                  },
              monochromeLogo = String,
              name = String,
              outputTypes = Array String,
              platforms = Array String,
              publiccodeYmlVersion = String,
              releaseDate = String,
              roadmap = String,
              softwareType =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'configurationFiles,
                        'library,
                        'addon,
                        '"standalone/other",
                        '"standalone/backend",
                        '"standalone/web",
                        '"standalone/desktop",
                        '"standalone/iot",
                        '"standalone/mobile"
                      |]
                    ],
              softwareVersion = String,
              url = String,
              usedBy = Array String,
            },
        required =
          {
              categories = true,
              description = true,
              developmentStatus = true,
              legal = true,
              localisation = true,
              maintenance = true,
              name = true,
              platforms = true,
              publiccodeYmlVersion = true,
              softwareType = true,
              url = true,
            },
      }