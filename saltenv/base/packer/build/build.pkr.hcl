# folder/build.pkr.hcl
build {
  sources = [
    "source.amazon-ebs.example-1",
#    "source.virtualbox-iso.example-2"
  ]

  provisioner "shell" {
    inline = [
      "sudo yum -y update"
    ]
  }

  provisioner "salt-masterless" {
# required parameters
    local_state_tree = "/srv/salt"
# optional parameters
  bootstrap_args = "-X"
#  disable_sudo = true/false
#  remote_pillar_roots = "/srv/pillar" # default
#  remote_state_tree = "/srv/salt" # default
#  local_pillar_roots = ""
#  custom_state = "state.highstate" # default
   minion_config = "${var.minion_config}"
#  grains_file = ""
#  skip_bootstrap = false # default
#  temp_config_dir = "/tmp/salt" # default
#  no_exit_on_failure = false # default
#  log_level = ""
#  salt_call_args = ""
#  salt_bin_dir = ""
#  guest_os_type = "unix"/"windows"
  guest_os_type = "unix"
# formulas = []
# common parameters
# pause_before
# max_retries 
# only = [""]
# override
  }

  provisioner "shell" {
    inline = [
      "sudo systemctl stop salt-minion.service",
      "sudo systemctl disable salt-minion.service",
      "sudo rm -f /etc/salt/minion_id",
      "sudo rm -f /etc/salt/pki/minion/*",
      "sudo rm -f /etc/salt/pki/master/*",
      "sudo rm -rf /srv/salt",
      "sudo rmdir /srv"
    ]
  }
}

