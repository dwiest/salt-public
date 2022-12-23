# folder/sources.pkr.hcl
source "amazon-ebs" "example-1" {
  region = "us-east-1"
  instance_type = "t3.small"
  ssh_username = "ec2-user"
#  subnet_id = ""
  iam_instance_profile = "PackerRole"
  security_group_ids = "${var.security_group_ids}"
  ami_name = "${var.ami_name}-${var.build}"
  ami_description = "${var.ami_description}"
  associate_public_ip_address = false
  ssh_interface = "private_ip"

  source_ami_filter {
    owners = ["137112412989"]
    filters = {
      name = "${var.source_ami_filter_name}"
      root-device-type = "ebs"
      virtualization-type = "hvm"
     # description = "Amazon Linux AMI 2018.03*x86_64 HVM gp2"
    }
    most_recent = true
  }
}
