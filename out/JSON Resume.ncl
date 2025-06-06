# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.iso8601" =
        js2n.string.Matches
            "^([1-2][0-9]{3}-[0-1][0-9]-[0-3][0-9]|[1-2][0-9]{3}-[0-1][0-9]|[1-2][0-9]{3})$",
    }
    in
  {
      "$schema"
        | String
        | doc "link to the version of the schema that can validate the resume"
        | optional,
      awards
        | Array
          {
            awarder | String | doc "e.g. Time Magazine" | optional,
            date | refs."definitions.iso8601" | optional,
            summary
              | String
              | doc "e.g. Received for my work with Quantum Physics"
              | optional,
            title
              | String
              | doc "e.g. One of the 100 greatest minds of the century"
              | optional,
            ..
          }
        | doc "Specify any awards you have received throughout your professional career"
        | optional,
      basics
        | {
          email | String | doc "e.g. thomas@gmail.com" | optional,
          image
            | String
            | doc "URL (as per RFC 3986) to a image in JPEG or PNG format"
            | optional,
          label | String | doc "e.g. Web Developer" | optional,
          location
            | {
              address
                | String
                | doc m%"
                  To add multiple address lines, use 
                  . For example, 1234 Glücklichkeit Straße
                  Hinterhaus 5. Etage li.
                "%
                | optional,
              city | String | optional,
              countryCode
                | String
                | doc "code as per ISO-3166-1 ALPHA-2, e.g. US, AU, IN"
                | optional,
              postalCode | String | optional,
              region
                | String
                | doc "The general region where you live. Can be a US state, or a province, for instance."
                | optional,
              ..
            }
            | optional,
          name | String | optional,
          phone
            | String
            | doc "Phone numbers are stored as strings so use any format you like, e.g. 712-117-2923"
            | optional,
          profiles
            | Array
              {
                network | String | doc "e.g. Facebook or Twitter" | optional,
                url
                  | String
                  | doc "e.g. http://twitter.example.com/neutralthoughts"
                  | optional,
                username | String | doc "e.g. neutralthoughts" | optional,
                ..
              }
            | doc "Specify any number of social networks that you participate in"
            | optional,
          summary
            | String
            | doc "Write a short 2-3 sentence biography about yourself"
            | optional,
          url
            | String
            | doc "URL (as per RFC 3986) to your website, e.g. personal homepage"
            | optional,
          ..
        }
        | optional,
      certificates
        | Array
          {
            date | String | doc "e.g. 1989-06-12" | optional,
            issuer | String | doc "e.g. CNCF" | optional,
            name
              | String
              | doc "e.g. Certified Kubernetes Administrator"
              | optional,
            url | String | doc "e.g. http://example.com" | optional,
            ..
          }
        | doc "Specify any certificates you have received throughout your professional career"
        | optional,
      education
        | Array
          {
            area | String | doc "e.g. Arts" | optional,
            courses
              | Array String
              | doc "List notable courses/subjects"
              | optional,
            endDate | refs."definitions.iso8601" | optional,
            institution
              | String
              | doc "e.g. Massachusetts Institute of Technology"
              | optional,
            score
              | String
              | doc "grade point average, e.g. 3.67/4.0"
              | optional,
            startDate | refs."definitions.iso8601" | optional,
            studyType | String | doc "e.g. Bachelor" | optional,
            url | String | doc "e.g. http://facebook.example.com" | optional,
            ..
          }
        | optional,
      interests
        | Array
          {
            keywords | Array String | optional,
            name | String | doc "e.g. Philosophy" | optional,
            ..
          }
        | optional,
      languages
        | Array
          {
            fluency | String | doc "e.g. Fluent, Beginner" | optional,
            language | String | doc "e.g. English, Spanish" | optional,
            ..
          }
        | doc "List any other languages you speak"
        | optional,
      meta
        | {
          canonical
            | String
            | doc "URL (as per RFC 3986) to latest version of this document"
            | optional,
          lastModified
            | String
            | doc "Using ISO 8601 with YYYY-MM-DDThh:mm:ss"
            | optional,
          version
            | String
            | doc "A version field which follows semver - e.g. v1.0.0"
            | optional,
          ..
        }
        | doc "The schema version and any other tooling configuration lives here"
        | optional,
      projects
        | Array
          {
            description
              | String
              | doc "Short summary of project. e.g. Collated works of 2017."
              | optional,
            endDate | refs."definitions.iso8601" | optional,
            entity
              | String
              | doc "Specify the relevant company/entity affiliations e.g. 'greenpeace', 'corporationXYZ'"
              | optional,
            highlights
              | Array String
              | doc "Specify multiple features"
              | optional,
            keywords
              | Array String
              | doc "Specify special elements involved"
              | optional,
            name | String | doc "e.g. The World Wide Web" | optional,
            roles
              | Array String
              | doc "Specify your role on this project or in company"
              | optional,
            startDate | refs."definitions.iso8601" | optional,
            type
              | String
              | doc " e.g. 'volunteering', 'presentation', 'talk', 'application', 'conference'"
              | optional,
            url
              | String
              | doc "e.g. http://www.computer.org/csdl/mags/co/1996/10/rx069-abs.html"
              | optional,
            ..
          }
        | doc "Specify career projects"
        | optional,
      publications
        | Array
          {
            name | String | doc "e.g. The World Wide Web" | optional,
            publisher | String | doc "e.g. IEEE, Computer Magazine" | optional,
            releaseDate | refs."definitions.iso8601" | optional,
            summary
              | String
              | doc "Short summary of publication. e.g. Discussion of the World Wide Web, HTTP, HTML."
              | optional,
            url
              | String
              | doc "e.g. http://www.computer.org.example.com/csdl/mags/co/1996/10/rx069-abs.html"
              | optional,
            ..
          }
        | doc "Specify your publications through your career"
        | optional,
      references
        | Array
          {
            name | String | doc "e.g. Timothy Cook" | optional,
            reference
              | String
              | doc "e.g. Joe blogs was a great employee, who turned up to work at least once a week. He exceeded my expectations when it came to doing nothing."
              | optional,
            ..
          }
        | doc "List references you have received"
        | optional,
      skills
        | Array
          {
            keywords
              | Array String
              | doc "List some keywords pertaining to this skill"
              | optional,
            level | String | doc "e.g. Master" | optional,
            name | String | doc "e.g. Web Development" | optional,
            ..
          }
        | doc "List out your professional skill-set"
        | optional,
      volunteer
        | Array
          {
            endDate | refs."definitions.iso8601" | optional,
            highlights
              | Array String
              | doc "Specify accomplishments and achievements"
              | optional,
            organization | String | doc "e.g. Facebook" | optional,
            position | String | doc "e.g. Software Engineer" | optional,
            startDate | refs."definitions.iso8601" | optional,
            summary
              | String
              | doc "Give an overview of your responsibilities at the company"
              | optional,
            url | String | doc "e.g. http://facebook.example.com" | optional,
            ..
          }
        | optional,
      work
        | Array
          {
            description | String | doc "e.g. Social Media Company" | optional,
            endDate | refs."definitions.iso8601" | optional,
            highlights
              | Array String
              | doc "Specify multiple accomplishments"
              | optional,
            location | String | doc "e.g. Menlo Park, CA" | optional,
            name | String | doc "e.g. Facebook" | optional,
            position | String | doc "e.g. Software Engineer" | optional,
            startDate | refs."definitions.iso8601" | optional,
            summary
              | String
              | doc "Give an overview of your responsibilities at the company"
              | optional,
            url | String | doc "e.g. http://facebook.example.com" | optional,
            ..
          }
        | optional,
    }