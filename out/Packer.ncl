# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.builder-vagrant" =
        {
            add_cacert | String | optional,
            add_capath | String | optional,
            add_clean | Bool | optional,
            add_force | Bool | optional,
            add_insecure | Bool | optional,
            box_name | String | optional,
            box_version | String | optional,
            checksum | String | optional,
            checksum_type | String | optional,
            global_id | String | optional,
            output_dir | String | optional,
            output_vagrantfile | String | optional,
            package_include | String | optional,
            provider | String | optional,
            skip_add | Bool | optional,
            source_path | String | optional,
            teardown_method | String | optional,
            template | String | optional,
            type | std.contract.Equal "vagrant" | optional,
            ..
          },
      "definitions.builder-virtualbox-iso" =
        {
            bundle_iso | Bool | optional,
            communicator | String | optional,
            disk_size | std.number.Integer | optional,
            export_opts | Array String | optional,
            format | String | optional,
            guest_additions_interface | String | optional,
            guest_additions_mode | String | optional,
            guest_additions_path | String | optional,
            guest_additions_sha256 | String | optional,
            guest_additions_url | String | optional,
            guest_os_type | String | optional,
            hard_drive_interface | String | optional,
            hard_drive_nonrotational | Bool | optional,
            hard_driver_discard | Bool | optional,
            headless | Bool | optional,
            http_bind_address | std.number.Integer | optional,
            http_directory | String | optional,
            http_port_max | std.number.Integer | optional,
            http_port_min | std.number.Integer | optional,
            iso_checksum | String | optional,
            iso_interface | String | optional,
            iso_target_extension | String | optional,
            iso_target_path | String | optional,
            iso_url | String | optional,
            iso_urls | Array String | optional,
            keep_registered | Bool | optional,
            nvme_port_count | std.number.Integer | optional,
            output_directory | String | optional,
            output_filename | String | optional,
            sata_port_count | std.number.Integer | optional,
            shutdown_command | String | optional,
            skip_export | Bool | optional,
            type | std.contract.Equal "virtualbox-iso" | optional,
            virtualbox_version_file | String | optional,
            vm_name | String | optional,
            ..
          },
      "definitions.post-processor" =
        {
            compression_level | Number | optional,
            endpoint | String | optional,
            format | std.enum.TagOrString | [| '"tar.gz" |] | optional,
            keep_input_artifact | Bool | optional,
            name | String | optional,
            only | Array String | optional,
            type | std.enum.TagOrString | [| 'upload, 'compress |] | optional,
            ..
          },
      "definitions.provisioner" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.provisioner-ansible-local",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.provisioner-shell", { _ | Dyn } ]
                ],
              { type | std.enum.TagOrString | [| 'ansible-local, 'shell |], .. }
            ],
      "definitions.provisioner-ansible-local" = { playbook_file | String, .. },
      "definitions.provisioner-shell" =
        { inline | Array String | optional, .. },
    }
    in
  {
      builders
        | Array (
          std.contract.any_of
            [
              refs."definitions.builder-vagrant",
              refs."definitions.builder-virtualbox-iso"
            ]
        ),
      description | String | optional,
      min_packer_version | String | optional,
      post-processors
        | Array (
          std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'compress, 'vagrant |] ],
              refs."definitions.post-processor"
            ]
        )
        | optional,
      provisioners
        | Array (
          std.contract.Sequence [ refs."definitions.provisioner", { _ | Dyn } ]
        )
        | optional,
      variables
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "[a-zA-Z0-9_-]" = String, },
            properties = {},
            required = {},
          }
        | optional,
      ..
    }