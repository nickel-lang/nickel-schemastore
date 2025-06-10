# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      Analyses
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            Arguments
                              | Array String
                              | doc "Optional. An array of arguments to be sent to the program being started. Each argument will be subject to pattern expansion and if the result contains spaces, it will be enclosed in double quotation marks when the command line is built."
                              | optional,
                            "Close Visual3D"
                              | std.enum.TagOrString
                              | [| '"No Warnings", 'Never |]
                              | doc "Visual3D analysis only: Deprecated (> QTM 2.16)."
                              | optional,
                            Components
                              | Array String
                              | doc "Compound analysis only. Required. An array of analysis steps."
                              | optional,
                            "Do not wait for Application"
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "External program only: Optional. If analysis includes this property, QTM does not wait for external program to finish the processing. If property does not exit, to continue with subsequent analyses, external program must be closed manually (> QTM 2019.1)."
                              | optional,
                            "Do not wait for Visual3D"
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "Visual3D analysis only: Optional. If analysis includes this property, QTM does not wait for Visual3D to finish the processing. If property does not exit, to continue with subsequent analyses, Visual3D must be closed manually or Exit_Workspace; command has to be added to the very end of Visual3D script."
                              | optional,
                            Exclude
                              | std.contract.any_of [ Array String, String ]
                              | doc "Create / Solve skeleton analyses only: Optional. A string or list of strings to specify the file names to exclude. Wildcard can be used in the name to specify multiple files at once. Only measurements that are marked as used in the PAF pane will be affected."
                              | optional,
                            "Export measurements"
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      js2n.array.MinItems 1,
                                      Array (
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              '"xml settings",
                                              'json,
                                              'mat,
                                              'c3d,
                                              'tsv,
                                              'JSON,
                                              'MAT,
                                              'C3D,
                                              'TSV
                                            |]
                                          ]
                                      )
                                    ],
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        '"xml settings",
                                        'json,
                                        'mat,
                                        'c3d,
                                        'tsv,
                                        'JSON,
                                        'MAT,
                                        'C3D,
                                        'TSV
                                      |]
                                    ]
                                ]
                              | doc "External program only: Optional. A single string or an array containing any combination of the following values: “TSV”, “C3D”, “MAT”. Will make QTM export all the selected measurements to the corresponding formats before running the external program. Use “xml settings” to export a file with measurement settings (e.g. capture start time and analog channel names). The file will be named [file name].settings.xml."
                              | optional,
                            "Export session"
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "External program only: Optional. If present, the metadata of the session, all its ancestors and the measurements are exported into a file called session.xml."
                              | optional,
                            Measurements
                              | std.contract.any_of [ Array String, String ]
                              | doc "Create / Solve skeleton analyses only: Required. A string or list of strings to specify the file names to solve the skeletons. Wildcard can be used in the name to specify multiple files at once. To specify all measurements, simply use the wildcard character. Only measurements that are marked as used in the PAF pane will be affected."
                              | optional,
                            "Output file"
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [ js2n.array.MinItems 1, Array String ],
                                  String
                                ]
                              | doc "The name of a file that is created when this analysis is run. QTM uses this to check if the analysis has been completed. It is also used to issue a warning if this file has been changed since the analysis was last run for the current session. This property can contain patterns."
                              | optional,
                            "Pipeline template"
                              | String
                              | doc "Visual3D analysis only: Required. The name of a template file in the Templates directory. This file will be instantiated and used as the pipeline script in visual 3d."
                              | optional,
                            Prerequisites
                              | js2n.array.MinItems 1
                              | Array String
                              | doc "A sequence of measurement type names and analysis names that has to be completed before this analysis can be run. Measurement types are considered complete for the current session when the user has made at least the number of measurements given by that measurement type’s Minimum count field. Analyses are considered complete when the file denoted by the Output file field exists."
                              | optional,
                            "Program display name"
                              | String
                              | doc m%"
                                External program only: The name to be displayed in the directories tab in project options where the user will have to locate the external executable. NB: Because this path varies between computers rather than between projects, it is not stored in the project, but in computer-global settings file.
                                
                                Several analyses in different projects may share the same Program display name and QTM will automatically use the same executable path for all of them.
                              "%
                              | optional,
                            "Show output file"
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "External program only: Optional. If set, and if the Output file property has been specified, and if the execution of the external program is successful (exit code 0), the output file will be shown in the systems standard program for that file type (as if it was double-clicked in the windows explorer)."
                              | optional,
                            Template
                              | String
                              | doc "Instantiate template analysis only: Required. The name of the input file. If this name contains any path delimiter tokens, it will be considered to be relative to the project directory, otherwise QTM will assume that the input file is placed in the templates folder."
                              | optional,
                            "Template files"
                              | std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [ js2n.array.MinItems 1, Array String ],
                                  String
                                ]
                              | doc "External program only: Optional. A single string or an array containing names of files in the template directory. Each file will be run through the PHP engine and the result written to a file with the same name in the session directory. Standard Windows wildcards are supported, but note that if the asterisk is used to match a part of the filename, the pattern must be enclosed in single quotation marks to make sure it is not parsed as a YAML alias."
                              | optional,
                            Type
                              | std.enum.TagOrString
                              | [|
                                '"Solve skeleton",
                                '"Create skeleton",
                                '"Instantiate template",
                                'HTTPRequest,
                                'Compound,
                                'Report,
                                'Visual3D,
                                '"External program"
                              |]
                              | doc m%"
                                Names of the analysis type. Valid values are External program, Visual3D, Report, Compound, HTTPRequest, Instantiate template, Create skeleton, Solve skeleton.
                                
                                Note: only External program and Compound are available to all users. Other types require the Project Automation Framework developer license which is used for internal Qualisys development and by development partners.
                              "%
                              | optional,
                            "Working directory"
                              | String
                              | doc "External program only: Optional. The working directory set when the program is launched. Defaults to the session directory."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | doc ""
        | optional,
      Columns
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    ".+" =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            {
                                              Field
                                                | String
                                                | doc "The column will contain the value of the field named by this property regardless of the type of the item on the row."
                                                | optional,
                                              Fields
                                                | js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns =
                                                      {
                                                          ".+" =
                                                            std.contract.any_of
                                                                [
                                                                  String,
                                                                  {
                                                                    Editable
                                                                      | std.contract.any_of
                                                                        [
                                                                          js2n.Null,
                                                                          Bool,
                                                                          {
                                                                            _ | Dyn
                                                                          },
                                                                          Array
                                                                            Dyn,
                                                                          Number,
                                                                          String
                                                                        ]
                                                                      | doc "If yes or true, the value of the field can be edited directly in the tree."
                                                                      | optional,
                                                                    Name
                                                                      | String
                                                                      | doc ""
                                                                      | optional,
                                                                    ..
                                                                  }
                                                                ],
                                                        },
                                                    properties =
                                                      { Default = String, },
                                                    required = {},
                                                  }
                                                | doc "A map from the item type name to the field to use. For each item type that is present as a key in the map the value of the field named will be used. For item types that are not named in the map the default field name will be used."
                                                | optional,
                                              Width
                                                | std.number.Integer
                                                | doc "The width (in pixels) of this column."
                                                | optional,
                                              ..
                                            },
                                            Array Dyn
                                          ],
                                  },
                              properties = {},
                              required = {},
                            },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "The columns section specifies the columns of the tree view in the project view. It allows the PAF file to specify multiple column setups. The idea is that the users should be able to switch between different configurations and possibly also add their own but currently only the first setup is used.",
      "Date format"
        | std.enum.TagOrString
        | [| '"Middle endian", '"Little endian", 'Iso |]
        | doc "Specifies what date format to use in this project. Applies mainly to exports and column values but not to the field edit dialog. Accepted values are Iso, Little endian and Middle endian."
        | optional,
      "Date separator"
        | std.enum.TagOrString
        | [| 'None, 'Dot, 'Slash, 'Dash |]
        | doc "Specifies which token to use to separate the parts of the dates when formatting them. Accepted values are Dash, Slash, Dot and None."
        | optional,
      "Default fields"
        | js2n.array.MinItems 1
        | Array String
        | doc "A sequence of names of fields that will be added to all types. QTM also adds a number of default fields automatically. For a list of these, see the Default Fields section."
        | optional,
      "Export c3d settings"
        | {
          "Point units"
            | std.enum.TagOrString
            | [| 'm, 'cm, 'mm |]
            | doc "Possible units are: mm, cm or m."
            | optional,
          ..
        }
        | doc "This section is optional and is used when exporting to c3d file."
        | optional,
      Fields
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            Decimals
                              | std.number.Integer
                              | doc "Float type only: The number of decimals to present to the user."
                              | optional,
                            Default
                              | std.contract.any_of
                                [
                                  Array String,
                                  String,
                                  Number,
                                  Bool,
                                  js2n.Null
                                ]
                              | doc "The default value that this field will get when an item that contains it is created. This can be overridden in the item type specification and by inheritance. The value of this property should have the same data type as the field. String fields can also specify a sequence as default value. The sequence will be converted into a string containing the elements of the sequence separated by semicolon."
                              | optional,
                            Display
                              | std.enum.TagOrString
                              | [|
                                'TrueFalse,
                                'Checkbox,
                                'YesNo,
                                'truefalse,
                                'checkbox,
                                'yesno
                              |]
                              | doc "Boolean type only: Controls how this value will be displayed. Can be one of yesno, checkbox or truefalse."
                              | optional,
                            Force
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "String type only: Force the string to be non-empty."
                              | optional,
                            Hidden
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "If the value is Yes or True, this field will not be displayed in the GUI (and thus will not be editable by the user) but will be exported to files. It will keep its default value."
                              | optional,
                            Inherit
                              | std.enum.TagOrString
                              | [| 'Connect, 'Copy |]
                              | doc m%"
                                This field will be inherited by all subitems of the item that contains it. There are two modes of inheritance Copy and Connect and the value of this property has to be one of them.
                                
                                Copy: Inheritance by copying means that when a child to an item that has an inheritable field is created, a field with the same name is created in the child and the value of the field in the parent is copied to that field.
                                
                                Connect fields work the same way when an item is created, but if the field is changed in any of the items (any ancestor or heir) it is updated in all the items that have inherited this field from the same origin. If, for instance, a value is inherited by connection from a patient to a number of sessions and the measurements in those sessions and it is changed in one of the sessions it is changed in all those objects, but not in other patients and the sessions of those patients.
                                
                                Fields are inherited all the down to the leaves from the item including the fields so if the root item would include an inherited field, it would be copied to all items in the tree.
                              "%
                              | optional,
                            JSON
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "String type only: The string should be returned as JSON object when queried from the REST api. JSON fields are not exported to session.xml during the analysis step. (Available from QTM 2.14)."
                              | optional,
                            Max
                              | Number
                              | doc "Integer / Float types only: The maximum value that can be entered in this field."
                              | optional,
                            Min
                              | Number
                              | doc "Integer / Float types only: The minimum value that can be entered in this field."
                              | optional,
                            Quantity
                              | std.enum.TagOrString
                              | [|
                                '"Rotational speed",
                                '"Magnetic field strength",
                                'Acceleration,
                                'Speed,
                                'Temperature,
                                'Frequency,
                                'Time,
                                'Angle,
                                'Power,
                                'Moment,
                                'Force,
                                'Current,
                                'Voltage,
                                'Mass,
                                'Length
                              |]
                              | doc "Float type only: The physical quantity that this field represents. This list contains the basic physical quantities but also some derived quantities because there is no possibility to combine quantities."
                              | optional,
                            Readonly
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | doc "If the value is Yes or True this field will be displayed, but the user will not be able to edit it. It will keep its default value."
                              | optional,
                            Type
                              | std.enum.TagOrString
                              | [|
                                'Boolean,
                                'Enum,
                                'TimeOfDay,
                                'Date,
                                '"String",
                                'Float,
                                'Integer
                              |]
                              | doc "Required. Defines the type of the field. Possible values are Integer, Float, String, Date, TimeOfDay, Enum or Boolean.",
                            Unit
                              | std.enum.TagOrString
                              | [|
                                '"m/s",
                                '"Degrees per second",
                                'Millitesla,
                                'Tesla,
                                '"Standard gravity",
                                '"Feet per second squared",
                                '"Millimeters per second squared",
                                '"Meters per second squared",
                                'Knots,
                                '"Miles per hour",
                                '"Feet per second",
                                '"Kilometers per hour",
                                '"Millimeters per second",
                                '"Meters per second",
                                '"Degrees farenheit",
                                '"Degrees celsius",
                                'Kelvin,
                                '"Beats per minute",
                                '"Revolutions per minute",
                                'Megahertz,
                                'Kilohertz,
                                'Hertz,
                                'Hours,
                                'Minutes,
                                'Seconds,
                                'Degrees,
                                'Radians,
                                'Watt,
                                'Newtonmillimeter,
                                'Newtonmeter,
                                '"Pounds force",
                                'Kiloponds,
                                'Meganewtons,
                                'Kilonewtons,
                                'Millinewtons,
                                'Newtons,
                                'Kiloampere,
                                'Milliampere,
                                'Microampere,
                                'Nanoampere,
                                'Ampere,
                                'Kilovolts,
                                'Millivolts,
                                'Microvolts,
                                'Nanovolts,
                                'Volts,
                                'Pounds,
                                'Ounces,
                                'Grams,
                                'Milligrams,
                                'Micrograms,
                                'Kilograms,
                                'Miles,
                                'Yards,
                                'Feet,
                                'Inches,
                                'Kilometers,
                                'Centimeters,
                                'Millimeters,
                                'Microns,
                                'Nanometers,
                                '"Ångstroms",
                                'Meters,
                                '"degrees per second",
                                'millitesla,
                                'tesla,
                                '"standard gravity",
                                '"feet per second squared",
                                '"millimeters per second squared",
                                '"meters per second squared",
                                'knots,
                                '"miles per hour",
                                '"feet per second",
                                '"kilometers per hour",
                                '"millimeters per second",
                                '"meters per second",
                                '"degrees farenheit",
                                '"degrees celsius",
                                'kelvin,
                                '"beats per minute",
                                '"revolutions per minute",
                                'megahertz,
                                'kilohertz,
                                'hertz,
                                'hours,
                                'minutes,
                                'seconds,
                                'degrees,
                                'radians,
                                'watt,
                                'newtonmillimeter,
                                'newtonmeter,
                                '"pounds force",
                                'kiloponds,
                                'meganewtons,
                                'kilonewtons,
                                'millinewtons,
                                'newtons,
                                'kiloampere,
                                'milliampere,
                                'microampere,
                                'nanoampere,
                                'ampere,
                                'kilovolts,
                                'millivolts,
                                'microvolts,
                                'nanovolts,
                                'volts,
                                'pounds,
                                'ounces,
                                'grams,
                                'milligrams,
                                'micrograms,
                                'kilograms,
                                'miles,
                                'yards,
                                'feet,
                                'inches,
                                'kilometers,
                                'centimeters,
                                'millimeters,
                                'microns,
                                'nanometers,
                                '"ångstroms",
                                'meters
                              |]
                              | doc "Float type only: The unit of this field. Can only be specified if a quantity has been specified. Different units apply to different quantities. Either the unit name or the abbreviation can be given. If a unit is not entered, the S/I unit is used."
                              | optional,
                            Values
                              | Array (
                                std.contract.any_of
                                  [ js2n.Null, Bool, Number, String ]
                              )
                              | doc m%"
                                Enum type only: The enum field defines an enumeration. To the user it will be presented as a multiple selection and internally it will be saved as a numeric value. The possible values that an enum can have has to be specified in the Values property. This property can be either a sequence or a map.
                                
                                If it is a sequence it simply lists the choices of the enum and these will be assigned an integer value automatically.
                                
                                If it is a map it is a map from the choices to the numeric value of each particular choice.
                              "%
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | doc ""
        | optional,
      "Filename filter"
        | String
        | doc "A regular expression that determines which files (in addition to the qtm files) that will be visible in the tree view."
        | optional,
      Measurements
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = { ".+" = js2n.Nullable String, },
                              properties =
                                {
                                    "AIM models" = String,
                                    Count =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 0
                                          ],
                                    "Display fields dialog after creation" =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    "Display order" =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 1,
                                            Array String
                                          ],
                                    Fields =
                                      std.contract.any_of
                                          [
                                            std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                Array String
                                              ],
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".+" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                          ],
                                    Frequency = js2n.number.Minimum 1,
                                    Heading = String,
                                    "Maximum count" =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 0
                                          ],
                                    "Measurement length" =
                                      js2n.number.Minimum 0,
                                    "Measurement pattern" = String,
                                    "Minimum count" =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 0
                                          ],
                                    "Pretrigger length" = js2n.number.Minimum 0,
                                  },
                              required = {},
                            },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | doc ""
        | optional,
      "Package Information"
        | {
          Name
            | String
            | doc "The name of the package. Shown when creating a new project and used to keep the connection between a project and the package it was created from to, for instance, know if there is a new version of a package. This means that this value should not be changed unless strictly necessary because that will break the connection between existing projects and new versions of the package.",
          "Previous names"
            | js2n.array.MinItems 1
            | Array String
            | doc "A sequence of names that this package has had earlier in development. This is used only when checking if a project should be upgraded and allows for packages to be renamed without losing the project upgrade path."
            | optional,
          "Required QTM version"
            | js2n.string.Matches "^\\d+\\.\\d+(\\.\\d+)?$"
            | doc "Two or three digits separated by a period sign. The QTM version that is required for this package to work properly. Checked on install time. Must include major and minor version number and can optionally include build number too.",
          Version
            | js2n.string.Matches "^\\d+\\.\\d+(\\.\\d+(\\+\\d+)?)?$"
            | doc "Two numbers separated by a period sign (e.g. 44.23), three numbers separated by period signs (e.g. 1.45.3214), or three numbers separated by a period sign and a build number separated by a plus sign (e.g. 1.3.0+188). The version of the package. Used to keep track of which version a project is based on. Visible in the about box when a project is open. Useful for debugging purposes and for knowing if the package can be upgraded.",
          ..
        }
        | doc "This section contains information that the package management system uses. It is used mainly when installing packages and when creating new projects based on a package."
        | optional,
      "Project ID"
        | String
        | doc "A human readable name that identifies the project. This name is recorded in data files and should not be changed once data collection has started as doing so will render data files useless.",
      "Root type"
        | String
        | doc "Reference to the class or type name to use at the highest level in the PAF item hierarchy.",
      "Time format"
        | std.enum.TagOrString
        | [| '"24-hour", '"12-hour" |]
        | doc "Specifies what time format to use in this project. Applies mainly to exports and column values but not to the field edit dialog. Accepted values are 12-hour and 24-hour."
        | optional,
      Types
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    ".+" =
                                      std.contract.Sequence
                                          [
                                            std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns =
                                                      {
                                                          ".+" =
                                                            std.contract.any_of
                                                                [
                                                                  Array String,
                                                                  String,
                                                                  js2n.Null
                                                                ],
                                                        },
                                                    properties =
                                                      {
                                                          Analyses =
                                                            Array String,
                                                          Children =
                                                            Array String,
                                                          "Directory pattern" =
                                                            String,
                                                          "Display order" =
                                                            Array String,
                                                          Fields =
                                                            std.contract.any_of
                                                                [
                                                                  std.contract.Sequence
                                                                    [
                                                                      js2n.array.MinItems
                                                                        1,
                                                                      Array
                                                                        String
                                                                    ],
                                                                  js2n.record.Record
                                                                    {
                                                                      additional =
                                                                        'Some
                                                                            Dyn,
                                                                      patterns =
                                                                        {
                                                                            ".+" =
                                                                              String,
                                                                          },
                                                                      properties =
                                                                        {},
                                                                      required =
                                                                        {},
                                                                    }
                                                                ],
                                                          Heading = String,
                                                          Icon = String,
                                                          Measurements =
                                                            Array String,
                                                          "PDF guide" = String,
                                                        },
                                                    required = {},
                                                  },
                                                Array Dyn
                                              ],
                                            js2n.OneOf
                                              [
                                                std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Number,
                                                    String,
                                                    js2n.record.Required
                                                      [ "Children" ],
                                                    Array Dyn
                                                  ],
                                                std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Number,
                                                    String,
                                                    js2n.record.Required
                                                      [ "Measurements" ],
                                                    Array Dyn
                                                  ]
                                              ]
                                          ],
                                  },
                              properties =
                                {
                                    Fields =
                                      std.contract.any_of
                                          [ Array String, String, js2n.Null ],
                                  },
                              required = {},
                            },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "",
      ..
    }