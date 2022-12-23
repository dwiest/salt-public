{% from "yum/repo/hashicorp/map.jinja" import hashicorp with context %}

yum-repo-packer:
  cmd.run:
    - order: 1
    - name: yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
    - unless: yum-config-manager hashicorp | grep hashicorp
