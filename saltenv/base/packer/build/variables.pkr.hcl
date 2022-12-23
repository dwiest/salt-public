variable "build" {
  type = string
# default = "foobar"
# sensitive = false
}

variable "minion_config" {
  type = string
  default = "/srv/salt/saltenv/base/packer/build/minion.config"
}

variable "ami_name" {
  type = string
}

#variable "grains_file" {
#  type = string
#  default = "/srv/salt/saltenv/base/packer/build/minion.grains"
#}

variable security_group_ids {
  type = list(string)
  default = []
}

variable ami_description {
  type = string
  default = "apples"
}

variable source_ami_filter_name {
  type = string
  default = "amzn2-ami-kernel-5.10-hvm-2.0.20221004.0-x86_64-gp2"
}

variable source_ami_filter_owners {
  type = list(string)
  default = ["137112412989"]
}
