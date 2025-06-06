# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | String
        | doc "The value of this keyword MUST be a URI (containing a scheme) and this URI MUST be normalized. "
        | optional,
      authors
        | Array
          {
            author
              | {
                first_name | String,
                last_name | String,
                middle_initial | String | optional,
              },
          }
        | doc "Optional, but include if intending to submit to GenBank. Authors can be different from the contact.",
      bioproject | String | optional,
      biosample | String | optional,
      comment
        | String
        | doc "Appears in the COMMENT section of each GenBank sequence record."
        | optional,
      consortium
        | String
        | doc "Name of the project that generated the genome assembly"
        | optional,
      contact_info
        | {
          city | String,
          country | String,
          department | String,
          email | String,
          fax | String | optional,
          first_name | String,
          last_name | String,
          middle_initial | String | optional,
          organization | String,
          phone | String | optional,
          postal_code | String,
          state | String | optional,
          street | String,
        }
        | doc "Optional, but include if intending to submit to GenBank. The main contact for this genome assembly.",
      fasta
        | { class | String | optional, location | String | optional, }
        | optional,
      location
        | String
        | doc "Possible values are chromosome or plasmid. Please provide the location in the metadata YAML file only if it is applicable to ALL sequences in the fasta file. If some sequences in the assembled genome are chromosomes and others plasmids, include the location in the definition line of each sequence in the fasta file with the tag value pair [location=chromosome] or [location=plasmid], after the SeqID and a space (e.g. >seq1 [location=plasmid]). In plasmid case add [plasmid-name=<plasmidname>]. If the location is provided in neither the metadata YAML nor the fasta file, the sequences will be presumed to be chromosome. Note: since 2021 releases of PGAPx this will affect noticeably the annotation on the molecule"
        | optional,
      locus_tag_prefix
        | String
        | doc "One to 9-letter prefix to use for naming genes on this genome assembly. If an official locus tag prefix was already reserved from an INSDC organization (GenBank, ENA or DDBJ) for the given BioSample and BioProject pair, provide here. Otherwise, provide a string of your choice. If no value is provided, the prefix 'pgaptmp' will be used. See more details in this Note about locus tags at: https://github.com/ncbi/pgap/wiki/Input-Files#Note-about-locus-tags"
        | optional,
      organism
        | {
          genus_species
            | String
            | doc "Binomial name or, if the species is unknown, genus for the sequenced organism. This identifier must be valid in NCBI Taxonomy. See Taxonomy information for how to find out if the name is valid: https://github.com/ncbi/pgap/wiki/Input-Files#Taxonomy-information"
            | optional,
          strain | String | doc "Strain of the sequenced organism" | optional,
        }
        | optional,
      publications
        | Array
          {
            publication
              | {
                authors
                  | Array
                    {
                      author
                        | {
                          first_name | String,
                          last_name | String,
                          middle_initial | String | optional,
                        }
                        | optional,
                    }
                  | optional,
                pmid | std.number.Integer | optional,
                status
                  | std.enum.TagOrString
                  | [| 'unpublished, 'in-press, 'published |]
                  | doc "Can be only one of: published, in-press, unpublished"
                  | optional,
                title | String | optional,
              },
          }
        | optional,
      sra
        | Array
          {
            accession
              | String
              | doc "Sequence Read Archive (SRA) accession for the run (with SRR, ERR or DRR prefix)",
          }
        | doc "Sequence reads used to build the assembly"
        | optional,
      topology
        | String
        | doc "Possible values are linear or circular. Circular means that the first base in the sequence is adjacent to the last base. Please provide the topology in the metadata YAML file only if it is applicable to ALL sequences in the fasta file. If some sequences in the assembled genome are circular and others linear, include the topology in the definition line of each sequence in the fasta file with the tag value pair [topology=circular] or [topology=linear], after the SeqID and a space (e.g. >seq1 [topology=circular]). If the topology is provided in neither the metadata YAML nor the fasta file, the sequences will be presumed to be linear."
        | optional,
      tp_assembly
        | Bool
        | doc "NCBI internal flag used for testing."
        | optional,
    }